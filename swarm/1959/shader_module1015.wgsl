struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_2 = Struct_2(1175f, vec4<bool>(true, true, true, false), Struct_1(true, -1i));

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(true, 2147483647i), Struct_1(false, -14727i), Struct_1(true, i32(-2147483648)), Struct_1(false, -42376i), Struct_1(true, -1i), Struct_1(true, -30072i), Struct_1(false, 11604i));

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_2) -> i32 {
    var var_0 = arg_3;
    var var_1 = global1.c.b;
    let var_2 = select(!(!select(arg_3.b.xz, select(vec2<bool>(global3.a, global1.c.a), arg_3.b.zx, global1.b.x), global3.a || false)), select(select(select(global1.b.wy, select(vec2<bool>(global3.a, false), var_0.b.xy, false), arg_3.c.a), select(!vec2<bool>(arg_3.c.a, true), vec2<bool>(global1.b.x, global1.c.a), vec2<bool>(global1.b.x, false)), global1.c.a), var_0.b.zy, all(var_0.b.wz)), global1.b.wy);
    var_1 = var_0.c.b;
    let var_3 = vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(u_input.a), 7722u, 1u, _wgslsmith_mult_u32(13571u, u_input.a)) & select(~vec4<u32>(1u, 1u, 61318u, 17756u), ~vec4<u32>(0u, u_input.a, 4294967295u, 4294967295u), global1.b), countOneBits(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(15886u, u_input.a, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))), u_input.a, u_input.a);
    return _wgslsmith_mult_i32(_wgslsmith_mod_i32(global3.b, -(_wgslsmith_div_i32(var_0.c.b, 2147483647i) << (u_input.a % 32u))), global1.c.b);
}

fn func_2() -> u32 {
    let var_0 = !any(!(!select(global1.b.zyy, vec3<bool>(false, true, true), global1.b.wwx)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1438f)), _wgslsmith_f_op_f32(global1.a - global1.a), 27540u < u_input.a)))) - global1.a));
    let var_2 = Struct_2(-223f, global1.b, global1.c);
    let var_3 = global1.c.a;
    let var_4 = ~vec3<i32>(max(_wgslsmith_mult_i32(select(global1.c.b, global1.c.b, true), func_3(global1.c.b, vec4<f32>(var_1, -879f, 481f, -1092f), 0i, Struct_2(var_2.a, vec4<bool>(true, false, global3.a, true), Struct_1(global1.c.a, global3.b)))), -1i), ~abs(_wgslsmith_dot_vec2_i32(vec2<i32>(21483i, -24978i), u_input.b)), -2147483647i);
    return ~13440u;
}

fn func_1() -> i32 {
    let var_0 = global1.b.www;
    var var_1 = vec3<i32>(min(-37822i, global3.b), 2147483647i << (func_2() % 32u), -2147483647i);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-749f, 151f)))) + _wgslsmith_f_op_f32(select(global1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.a, _wgslsmith_f_op_f32(floor(global1.a)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.a * -1151f), _wgslsmith_f_op_f32(f32(-1f) * -1693f)))), u_input.a <= select(u_input.a, u_input.a, true))));
    var var_3 = u_input.a >> (4294967295u % 32u);
    global3 = Struct_1(true, func_3(_wgslsmith_add_i32(-1i, reverseBits(2147483647i ^ u_input.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2, -210f, global1.a, -257f))))), ~((var_1.x & 2147483647i) << (29153u % 32u)), Struct_2(var_2, select(select(global1.b, vec4<bool>(false, false, false, global1.b.x), false), !vec4<bool>(false, true, true, global3.a), var_0.x), Struct_1(true, ~(-758i)))));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.b;
    let var_1 = abs(firstTrailingBit(reverseBits(-_wgslsmith_add_vec3_i32(vec3<i32>(global3.b, -23277i, global3.b), vec3<i32>(0i, u_input.d, global3.b)))));
    global0 = 34150u;
    let var_2 = select(global1.c.a && global1.c.a, true && global1.c.a, true);
    let var_3 = _wgslsmith_sub_i32(var_1.x, _wgslsmith_div_i32(global3.b, func_1() ^ countOneBits(-u_input.c)));
    var var_4 = Struct_1(var_2 != all(vec4<bool>(true, global1.b.x, true, !global3.a)), _wgslsmith_clamp_i32(global3.b, -7822i, ~_wgslsmith_add_i32(-2147483647i | u_input.d, -7024i)));
    let var_5 = var_1.yy;
    let var_6 = abs(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~(vec3<u32>(u_input.a, u_input.a, 4294967295u) & vec3<u32>(24725u, u_input.a, u_input.a)), _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(0u, 1u, u_input.a))), _wgslsmith_sub_vec3_u32(vec3<u32>(22164u, u_input.a, 49893u), vec3<u32>(1u, 6740u, u_input.a)) << (~(~vec3<u32>(1u, u_input.a, 47827u)) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(var_1, var_1), 23908i), -select(vec2<i32>(-2147483647i, 18570i), u_input.b, !vec2<bool>(true, var_2))), firstTrailingBit(_wgslsmith_sub_i32(firstLeadingBit(var_5.x), -var_1.x >> (countOneBits(u_input.a) % 32u))), u_input.b, -11408i);
}

