struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(false, -1336f, vec3<i32>(-43934i, 0i, -631i), vec2<u32>(62804u, 1u), vec4<f32>(-1185f, 343f, 239f, 217f));

var<private> global2: array<bool, 4>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<u32>) -> i32 {
    var var_0 = vec4<u32>(global1.d.x, ~46045u, u_input.d.x, _wgslsmith_sub_u32(~countOneBits(_wgslsmith_mult_u32(u_input.e.x, 1u)), _wgslsmith_clamp_u32(1u, ~_wgslsmith_mult_u32(u_input.d.x, global0.b.d.x), global0.c.x)));
    let var_1 = Struct_1(any(!(!select(vec4<bool>(false, global0.b.a, true, arg_1.a), vec4<bool>(arg_1.a, false, global0.b.a, global2[_wgslsmith_index_u32(arg_1.d.x, 4u)]), false))), arg_1.b, global1.c, ~vec2<u32>(select(global1.d.x, u_input.e.x, global0.d != 1016f), u_input.d.x), _wgslsmith_f_op_vec4_f32(arg_1.e - global1.e));
    let var_2 = max(1u & ~var_0.x, min(_wgslsmith_mod_u32(1074u, var_0.x), 58059u));
    global1 = Struct_1((false || !all(vec4<bool>(global1.a, false, global1.a, false))) && select(arg_1.a, arg_1.a, !global2[_wgslsmith_index_u32(4294967295u, 4u)]), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(949f, arg_1.e.x)))))), vec3<i32>(var_1.c.x, -1i, i32(-1i) * -48632i), global0.b.d, arg_1.e);
    var var_3 = 21607u;
    return global0.b.c.x & -(global0.b.c.x ^ max(-2147483647i, -2147483647i));
}

fn func_3() -> i32 {
    global0 = Struct_2(select(select(select(select(global0.a, vec3<bool>(global0.b.a, false, global1.a), global0.a), !global0.a, global0.a.x), select(vec3<bool>(true, true, global1.a), global0.a, global0.a), select(!vec3<bool>(global2[_wgslsmith_index_u32(global0.c.x, 4u)], global0.b.a, global2[_wgslsmith_index_u32(1u, 4u)]), select(vec3<bool>(true, global2[_wgslsmith_index_u32(21352u, 4u)], global0.a.x), global0.a, vec3<bool>(global0.a.x, global1.a, global1.a)), !global0.a)), !(!(!vec3<bool>(global2[_wgslsmith_index_u32(global1.d.x, 4u)], false, true))), true), global0.b, vec4<u32>(~global0.c.x, firstLeadingBit(firstTrailingBit(21396u)) ^ (_wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.x, global1.d.x, 0u, 1u), vec4<u32>(global0.b.d.x, 1u, 27322u, global1.d.x)) & _wgslsmith_mod_u32(12594u, global0.c.x)), 66417u, 0u), _wgslsmith_f_op_f32(-global1.b), true);
    global1 = Struct_1(_wgslsmith_dot_vec3_u32(abs(u_input.e | vec3<u32>(global1.d.x, u_input.d.x, global1.d.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(82555u, u_input.e.x, global1.d.x), ~vec3<u32>(4294967295u, 4294967295u, 78617u))) > (0u >> (~global1.d.x % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1760f * global1.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-452f * _wgslsmith_div_f32(1000f, global0.d)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d - -630f) - 2379f))), vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a, global1.c), u_input.a), vec2<u32>(_wgslsmith_add_u32(4294967295u, ~global0.c.x) << (~(global1.d.x << (global0.b.d.x % 32u)) % 32u), firstLeadingBit(abs(u_input.d.x))), global1.e);
    global2 = array<bool, 4>();
    let var_0 = u_input.b;
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b.e.yyy * global0.b.e.xyz)), vec3<f32>(global1.e.x, _wgslsmith_f_op_f32(1096f - global0.b.b), global0.b.e.x))), Struct_2(global0.a, global0.b, ~vec4<u32>(global0.b.d.x, ~15152u, global0.c.x, ~4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1016f))), select(false, true, select(true, all(vec4<bool>(global0.e, false, true, false)), true))));
    return abs(53907i);
}

fn func_1() -> f32 {
    var var_0 = abs(vec4<i32>(global0.b.c.x, func_2(global1.c.yy, Struct_1(true, global1.e.x, global1.c, vec2<u32>(global1.d.x, global1.d.x), vec4<f32>(global0.d, -1000f, global1.b, -852f)), u_input.d) >> (global0.c.x % 32u), ~(~global1.c.x), countOneBits(global0.b.c.x) >> (~63871u % 32u)) ^ -select(countOneBits(vec4<i32>(global1.c.x, global0.b.c.x, 67207i, -9929i)), -vec4<i32>(-53321i, global1.c.x, 1i, u_input.a.x), !global1.a));
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(~func_3(), 0i, global1.c.x), global1.c);
    global1 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(20909u ^ u_input.e.x, 4294967295u), 4u)], _wgslsmith_f_op_f32(trunc(global1.b)), max(firstTrailingBit(-(~vec3<i32>(13564i, 0i, global1.c.x))), firstTrailingBit(abs(_wgslsmith_mod_vec3_i32(var_1, u_input.a)))), ~u_input.d.zx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(470f, global0.d, global0.d, -479f)))) + global0.b.e));
    let var_2 = abs(_wgslsmith_sub_vec3_u32(vec3<u32>(~(~global1.d.x), 25234u, ~4608u), u_input.d));
    var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-(var_0.x >> (abs(0u) % 32u)), firstLeadingBit(~(u_input.a.x ^ global0.b.c.x)), 1i, (abs(var_1.x) | ~u_input.a.x) << (~(~u_input.d.x) % 32u)), (countOneBits(firstLeadingBit(vec4<i32>(var_1.x, -1i, 15791i, var_1.x))) ^ firstTrailingBit(reverseBits(vec4<i32>(global1.c.x, var_1.x, -17816i, var_0.x)))) >> (select(global0.c, select(vec4<u32>(32247u, 36121u, 0u, 3607u), global0.c, vec4<bool>(global0.a.x, global2[_wgslsmith_index_u32(4294967295u, 4u)], global0.b.a, false)), false) % vec4<u32>(32u)), min(vec4<i32>(_wgslsmith_clamp_i32(-1i, -3017i, u_input.a.x), global0.b.c.x, _wgslsmith_clamp_i32(var_0.x, -1i, 21870i), _wgslsmith_div_i32(-1i, 1i)) | vec4<i32>(0i ^ global1.c.x, u_input.b.x, _wgslsmith_dot_vec2_i32(global0.b.c.xx, u_input.b), ~var_1.x), reverseBits(-vec4<i32>(global0.b.c.x, var_0.x, 16502i, global1.c.x))));
    return global1.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b;
    var var_1 = global0.b.e.zzx;
    global0 = Struct_2(global0.a, Struct_1(all(select(select(vec4<bool>(global2[_wgslsmith_index_u32(global0.b.d.x, 4u)], true, var_0.a, false), vec4<bool>(global2[_wgslsmith_index_u32(global1.d.x, 4u)], false, global1.a, global1.a), false), select(vec4<bool>(global0.e, global1.a, true, var_0.a), vec4<bool>(global0.e, true, var_0.a, var_0.a), true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-var_1.x)))), u_input.a, select(~select(vec2<u32>(global1.d.x, 1u), u_input.d.yz, global0.a.yz), global1.d, global0.a.x), _wgslsmith_f_op_vec4_f32(-global0.b.e)), global0.c, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-305f, _wgslsmith_f_op_f32(f32(-1f) * -388f))) - _wgslsmith_f_op_f32(f32(-1f) * -596f))), select(2147483647i >= (-global0.b.c.x ^ _wgslsmith_add_i32(34125i, global1.c.x)), var_0.a, var_0.a));
    let var_2 = u_input.b.x;
    global1 = global0.b;
    global0 = Struct_2(!global0.a, Struct_1(global2[_wgslsmith_index_u32(~4393u, 4u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-global1.e.x), any(vec2<bool>(false, true)))), var_0.b)), vec3<i32>(-1i, u_input.b.x, i32(-1i) * -1i), ~global1.d, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, 776f)), 1551f, var_0.e.x, _wgslsmith_f_op_f32(f32(-1f) * -779f))))), ~global0.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1()))))), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(abs(select(global0.b.c, global1.c, vec3<bool>(false, false, false)))), var_2);
}

