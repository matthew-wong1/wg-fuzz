struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: bool,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(6307i, -21451i, 2147483647i, -1i, -1i, -1i, -20127i, 2147483647i, 0i, -38301i, -2035i, -77819i, -41664i, 1i, -36179i, -3077i, 1i);

var<private> global1: u32;

var<private> global2: array<u32, 17>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(734f, 1000f))));
    return ~(~65362u);
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: u32) -> f32 {
    global1 = 0u;
    var var_0 = !arg_0;
    var_0 = !all(!(!vec2<bool>(arg_0, arg_0)));
    global2 = array<u32, 17>();
    let var_1 = 4294967295u;
    return arg_1.a;
}

fn func_1() -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(func_3(any(vec3<bool>(false, func_2(false, vec2<bool>(false, false), vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(83902u, 17u)], global2[_wgslsmith_index_u32(u_input.a.x, 17u)]), Struct_2(vec2<i32>(17208i, global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec3<i32>(global0[_wgslsmith_index_u32(11935u, 17u)], 17477i, global0[_wgslsmith_index_u32(11766u, 17u)]), Struct_1(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], 17u)], global2[_wgslsmith_index_u32(0u, 17u)], 52821u, 0u), vec4<f32>(218f, -143f, -301f, 362f), false, vec2<u32>(4294967295u, 4294967295u), vec3<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], 1u, 9117u)), false)) == u_input.a.x, true)), Struct_4(_wgslsmith_f_op_f32(max(-809f, 316f))), ~u_input.a.x));
    let var_1 = vec3<u32>(86066u, 1u, _wgslsmith_mod_u32(firstTrailingBit(~1u), global2[_wgslsmith_index_u32(u_input.a.x, 17u)]));
    global2 = array<u32, 17>();
    global0 = array<i32, 17>();
    global1 = 1u;
    return Struct_5(Struct_1(firstLeadingBit(vec4<u32>(u_input.a.x, global2[_wgslsmith_index_u32(21427u, 17u)] << (var_1.x % 32u), max(58321u, u_input.a.x), ~4294967295u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(2433f, var_0, 479f, -269f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0))))), true, u_input.a, ~var_1), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(470f, var_0, -633f, -384f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -145f, var_0, var_0)))), Struct_1(abs(vec4<u32>(121691u, 3473u, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], 18665u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -855f, var_0, var_0)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, -601f, 118f, -701f), vec4<f32>(var_0, 246f, var_0, -1278f), false))), all(vec2<bool>(true, true)), _wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, u_input.a.x), u_input.a), vec3<u32>(u_input.a.x, abs(23141u), _wgslsmith_mult_u32(var_1.x, u_input.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(max(1043f, 761f)))), Struct_1(min(firstLeadingBit(vec4<u32>(1u, var_1.x, u_input.a.x, 64998u)), _wgslsmith_sub_vec4_u32(vec4<u32>(7469u, u_input.a.x, 1u, 7763u), vec4<u32>(1u, 1u, global2[_wgslsmith_index_u32(1u, 17u)], var_1.x))), vec4<f32>(_wgslsmith_f_op_f32(trunc(763f)), -241f, 1206f, 618f), any(vec2<bool>(true, true)), _wgslsmith_add_vec2_u32(var_1.xz, var_1.zx) << ((vec2<u32>(var_1.x, u_input.a.x) << (vec2<u32>(u_input.a.x, var_1.x) % vec2<u32>(32u))) % vec2<u32>(32u)), vec3<u32>(var_1.x, var_1.x, 0u) >> (_wgslsmith_mult_vec3_u32(var_1, var_1) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-462f - 1190f), _wgslsmith_f_op_f32(trunc(-453f)))) - _wgslsmith_div_f32(-918f, _wgslsmith_f_op_f32(f32(-1f) * -149f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(447f - 245f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(362f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1382f, 781f))))))));
    let var_1 = func_1();
    var var_2 = _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(~8136u, 17u)] << (1u % 32u), abs(_wgslsmith_mult_i32(-21181i, global0[_wgslsmith_index_u32(func_2(var_1.b.a.x >= var_1.a.b.x, select(vec2<bool>(var_1.a.c, false), vec2<bool>(var_1.a.c, false), vec2<bool>(true, var_1.a.c)), vec3<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], 30253u, 4294967295u), Struct_2(vec2<i32>(0i, global0[_wgslsmith_index_u32(103599u, 17u)]), vec3<i32>(global0[_wgslsmith_index_u32(9555u, 17u)], -2147483647i, global0[_wgslsmith_index_u32(var_1.a.d.x, 17u)]), var_1.a, false)), 17u)])));
    var var_3 = select(!(!vec4<bool>(var_1.b.b.c, var_1.a.c, var_1.a.c, all(vec3<bool>(false, var_1.a.c, var_1.b.b.c)))), !vec4<bool>(select(false, var_1.b.a.x != var_1.a.b.x, var_1.b.b.c || var_1.b.d.c), !var_1.b.b.c, !var_1.a.c, false), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a.b.x))))) == var_1.a.b.x);
    var var_4 = vec3<bool>(all(!(!(!vec4<bool>(var_1.a.c, false, false, var_3.x)))), !(var_1.b.a.x <= var_1.a.b.x) | true, var_1.b.d.c);
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.x)) * var_1.a.b.x) * var_1.b.d.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(9618u, 17u)], vec2<i32>(~(global0[_wgslsmith_index_u32(~u_input.a.x, 17u)] ^ global0[_wgslsmith_index_u32(41564u, 17u)]), -33177i), 35099i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a.b.wzw + vec3<f32>(_wgslsmith_f_op_f32(var_1.a.b.x - var_1.b.c.x), _wgslsmith_f_op_f32(abs(var_5)), -1596f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-140f, -1851f, var_1.b.b.b.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b.b.b.zzy) - var_1.a.b.wzx))));
}

