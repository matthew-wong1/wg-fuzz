struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 24>;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, false, false, true), vec3<u32>(101154u, 60038u, 71476u), vec2<u32>(123421u, 4294967295u), -1808f);

var<private> global2: vec3<i32> = vec3<i32>(-68006i, 2147483647i, 82720i);

var<private> global3: bool = false;

var<private> global4: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<bool>(true, false, false, true), vec3<u32>(26102u, 29281u, 28105u), vec2<u32>(0u, 1u), -1409f), Struct_1(vec4<bool>(true, false, true, true), vec3<u32>(0u, 4294967295u, 73217u), vec2<u32>(27132u, 4294967295u), -364f), Struct_1(vec4<bool>(false, false, true, true), vec3<u32>(4294967295u, 14496u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), 1068f), Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(20075u, 0u, 32294u), vec2<u32>(0u, 0u), 1000f), Struct_1(vec4<bool>(false, false, true, false), vec3<u32>(1u, 17239u, 0u), vec2<u32>(35471u, 1u), 581f), Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(14441u, 67225u, 1u), vec2<u32>(8554u, 4914u), 1413f), Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(4294967295u, 43296u, 83580u), vec2<u32>(58637u, 4294967295u), 656f), Struct_1(vec4<bool>(false, true, false, true), vec3<u32>(47759u, 1u, 29237u), vec2<u32>(52271u, 0u), 1201f), Struct_1(vec4<bool>(true, false, false, true), vec3<u32>(4294967295u, 1u, 4294967295u), vec2<u32>(2890u, 11713u), -304f), Struct_1(vec4<bool>(false, true, false, true), vec3<u32>(117555u, 41668u, 59760u), vec2<u32>(50921u, 0u), 930f), Struct_1(vec4<bool>(true, true, false, true), vec3<u32>(0u, 0u, 39611u), vec2<u32>(30654u, 22269u), -388f), Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(4294967295u, 68412u, 63703u), vec2<u32>(42543u, 4294967295u), 1040f), Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(10149u, 1u, 4294967295u), vec2<u32>(1u, 0u), 1071f), Struct_1(vec4<bool>(false, false, true, true), vec3<u32>(113483u, 25949u, 7965u), vec2<u32>(27209u, 49363u), 638f), Struct_1(vec4<bool>(false, false, true, false), vec3<u32>(0u, 23226u, 29028u), vec2<u32>(12469u, 3110u), 1205f), Struct_1(vec4<bool>(true, false, false, true), vec3<u32>(1u, 4294967295u, 32455u), vec2<u32>(990u, 119079u), -992f), Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(45946u, 4294967295u, 17308u), vec2<u32>(10836u, 15389u), 2832f), Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(4294967295u, 1u, 68203u), vec2<u32>(103138u, 4294967295u), -312f), Struct_1(vec4<bool>(false, false, true, false), vec3<u32>(43421u, 0u, 20156u), vec2<u32>(0u, 4294967295u), -1803f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> bool {
    var var_0 = vec2<bool>(true, !(~(50819i ^ global2.x) <= countOneBits(u_input.b.x | u_input.b.x)));
    var var_1 = firstLeadingBit(vec2<i32>(global2.x, u_input.b.x));
    var_0 = vec2<bool>(false, (1u < _wgslsmith_dot_vec3_u32(arg_1.b & arg_1.b, vec3<u32>(arg_1.c.x, global1.b.x, global1.b.x))) && !global1.a.x);
    var_1 = _wgslsmith_add_vec2_i32(select(_wgslsmith_add_vec2_i32(~vec2<i32>(-59993i, -2147483647i), vec2<i32>(u_input.b.x, firstTrailingBit(global2.x))), global2.yy, !(_wgslsmith_f_op_f32(ceil(arg_1.d)) >= global1.d)), ~(~vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b.yw, u_input.b.yw), -2147483647i)));
    var var_2 = 323f;
    return arg_0.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>) -> vec4<bool> {
    global0 = array<vec4<bool>, 24>();
    var var_0 = _wgslsmith_f_op_f32(136f * arg_1.x);
    let var_1 = vec4<u32>(u_input.a >> (global1.c.x % 32u), 85784u, ~1u, global1.b.x);
    var var_2 = Struct_1(!vec4<bool>(true, !(global1.a.x & false), global1.a.x, global1.a.x || func_3(vec3<bool>(global1.a.x, global1.a.x, global1.a.x), Struct_1(global1.a, vec3<u32>(global1.c.x, var_1.x, 1u), global1.c, 602f))), ~(vec3<u32>(46534u << (0u % 32u), var_1.x, ~0u) ^ firstLeadingBit(min(var_1.xyw, vec3<u32>(1u, 4294967295u, 4294967295u)))), u_input.c.ww, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(321f))), _wgslsmith_f_op_f32(f32(-1f) * -658f))));
    var_0 = arg_1.x;
    return select(vec4<bool>(_wgslsmith_add_u32(select(3669u, 8701u, var_2.a.x), firstLeadingBit(global1.b.x)) == 158350u, all(select(select(vec2<bool>(global1.a.x, global1.a.x), vec2<bool>(global1.a.x, true), true), vec2<bool>(global1.a.x, false), any(vec2<bool>(false, false)))), false, 311f > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global1.d))))), select(select(select(var_2.a, global1.a, vec4<bool>(false, global1.a.x, false, true)), vec4<bool>(true, any(vec4<bool>(global1.a.x, var_2.a.x, global1.a.x, false)), var_2.a.x, global1.a.x), select(!global1.a, var_2.a, var_2.a.x)), select(vec4<bool>(global1.a.x & var_2.a.x, true || var_2.a.x, true, any(vec3<bool>(var_2.a.x, global1.a.x, false))), select(select(var_2.a, var_2.a, vec4<bool>(var_2.a.x, true, false, var_2.a.x)), !vec4<bool>(true, var_2.a.x, global1.a.x, true), vec4<bool>(true, global1.a.x, global1.a.x, var_2.a.x)), any(!global1.a.yxy)), !(!select(var_2.a, global0[_wgslsmith_index_u32(44911u, 24u)], false))), !vec4<bool>(true, !var_2.a.x, true, true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: u32) -> Struct_1 {
    return Struct_1(vec4<bool>(true, false, true && (_wgslsmith_f_op_f32(min(arg_0.d, 451f)) >= -100f), false), ~arg_0.b, abs(vec2<u32>(select(~4294967295u, 4294967295u, false), 4294967295u)), 1763f);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec4<bool> {
    global0 = array<vec4<bool>, 24>();
    global1 = func_4(Struct_1(select(select(arg_1.a, func_2(u_input.b.ywz, vec2<f32>(593f, arg_1.d)), !arg_2.a), global1.a, func_2(select(u_input.b.wxy, u_input.b.yxx, arg_1.a.zwy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d, -248f)))), countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(24908u, arg_3, arg_2.c.x), ~global1.b, firstTrailingBit(vec3<u32>(global1.c.x, 1u, 0u)))), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(arg_2.c.x, global1.c.x), 4294967295u), 17612u), -1703f), arg_2, arg_1.a.wy, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, arg_3, 4294967295u), _wgslsmith_mod_vec3_u32(abs(u_input.c.wzx), ~vec3<u32>(arg_0.x, u_input.a, 1u))));
    global0 = array<vec4<bool>, 24>();
    let var_0 = u_input.c;
    let var_1 = _wgslsmith_div_vec3_i32(u_input.b.wyy, vec3<i32>(~0i, ~(~abs(1i)), -49610i));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(u_input.a, 19u)];
    var var_1 = u_input.b;
    global1 = Struct_1(!select(select(select(vec4<bool>(global1.a.x, var_0.a.x, var_0.a.x, true), global0[_wgslsmith_index_u32(u_input.d, 24u)], var_0.a), global1.a, vec4<bool>(global1.a.x, true, global1.a.x, global1.a.x)), func_1(global1.c, global4[_wgslsmith_index_u32(global1.b.x, 19u)], global4[_wgslsmith_index_u32(11165u, 19u)], select(1u, 4294967295u, global1.a.x)), false), var_0.b, firstLeadingBit(~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 0u), var_0.b.zy)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(max(35153u, 4934u), ~global1.b.x), ~(~vec2<u32>(0u, u_input.c.x))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(sign(1696f)));
    global1 = global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(countOneBits(15589u), _wgslsmith_sub_u32(0u, u_input.d)), 19u)];
    var var_2 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(71136u, global2.yz, u_input.b, max(abs(u_input.b.x), -2147483647i), u_input.c.zw);
}

