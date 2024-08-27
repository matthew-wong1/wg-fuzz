struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(1659f, -1057f, 231f, 532f, 191f, -1207f, 1963f, -157f);

var<private> global1: i32 = -57691i;

var<private> global2: Struct_1;

var<private> global3: array<Struct_4, 20>;

var<private> global4: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<u32> {
    let var_0 = vec2<i32>(~6416i, _wgslsmith_mod_i32(u_input.a.x, max(17889i, ~u_input.a.x)));
    global1 = ~_wgslsmith_sub_i32((15634i << (select(4294967295u, 4294967295u, true) % 32u)) >> (~(~4294967295u) % 32u), _wgslsmith_dot_vec2_i32(-u_input.d.xx, firstTrailingBit(u_input.a.yz)));
    global0 = array<f32, 8>();
    var var_1 = -15725i;
    let var_2 = Struct_1(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(64984u, 4294967295u, 23012u) ^ vec3<u32>(global2.a.x, 1u, 0u), u_input.b)), -214f);
    return ~firstTrailingBit(~reverseBits(vec3<u32>(global2.a.x, var_2.a.x, 8276u))) | vec3<u32>(reverseBits(max(abs(0u), 0u)), _wgslsmith_div_u32(u_input.c.x, 55506u ^ _wgslsmith_sub_u32(u_input.b.x, 38238u)), 4294967295u);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_3(~(~4294967295u), min(~4294967295u, 0u), Struct_1(vec3<u32>(~max(4294967295u, u_input.c.x), max(u_input.c.x, global2.a.x) ^ ~u_input.b.x, _wgslsmith_sub_u32(countOneBits(u_input.b.x), 34987u)), -1039f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-440f, 1221f), global2.b))));
    var var_1 = Struct_2(var_0.c, Struct_1(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(72200u, var_0.b, var_0.c.a.x) >> (u_input.c % vec3<u32>(32u)), u_input.c)), var_0.d), Struct_1(global2.a & func_3(), var_0.c.b));
    let var_2 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(6075u, 8u)] * 494f), _wgslsmith_f_op_f32(floor(-1924f)), -453f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-519f, global0[_wgslsmith_index_u32(u_input.b.x, 8u)], -987f)))), select(vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(true, false, arg_1.x), all(arg_1.ywz)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, var_0.c.b, global2.b) * vec3<f32>(-1282f, -1102f, 923f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, 327f, var_0.c.b)))))));
    global1 = 2147483647i;
    global0 = array<f32, 8>();
    return Struct_1(u_input.c | abs(var_1.c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.b))) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.c.b, 1116f), _wgslsmith_div_f32(128f, global0[_wgslsmith_index_u32(4294967295u, 8u)]))))));
}

fn func_1(arg_0: Struct_4, arg_1: u32) -> i32 {
    global2 = func_2(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i << (global2.a.x % 32u), u_input.a.x, _wgslsmith_mult_i32(u_input.d.x, 66261i)) & max(~u_input.a.xyy, vec3<i32>(12652i, 1i, u_input.a.x)), vec3<i32>(u_input.d.x, -35602i, ~(-1i))), select(vec4<bool>(true, all(vec2<bool>(true, false)), u_input.b.x == (arg_1 ^ global2.a.x), true), vec4<bool>(true, true, true, true), !select(true, true, true)));
    let var_0 = u_input.a.xw;
    var var_1 = 19305u;
    global4 = ~1u;
    var var_2 = all(select(vec2<bool>(arg_0.a.x < _wgslsmith_f_op_f32(f32(-1f) * -1000f), countOneBits(1i) >= countOneBits(var_0.x)), vec2<bool>(true, any(vec4<bool>(true, true, true, true))), !vec2<bool>(global2.b <= -350f, false)));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(~(-1i), func_1(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(51429u, global2.a.x & global2.a.x), 20u)], 38952u)) <= (firstTrailingBit(~reverseBits(6657i)) | -1i);
    var var_1 = select(global2.a.zy & ~(~vec2<u32>(75332u, 48839u)), vec2<u32>(reverseBits(global2.a.x), global2.a.x), !select(select(vec2<bool>(true, false), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), var_0), true), vec2<bool>(false, !var_0), !select(vec2<bool>(false, var_0), vec2<bool>(true, false), var_0)));
    let var_2 = Struct_1(~(~vec3<u32>(58134u, 66945u, global2.a.x) ^ _wgslsmith_add_vec3_u32(~global2.a, u_input.c)), _wgslsmith_f_op_f32(floor(1111f)));
    var var_3 = global3[_wgslsmith_index_u32(var_1.x, 20u)];
    global4 = abs(func_2(~u_input.d, vec4<bool>(any(vec3<bool>(true, var_0, true)), !var_0 == var_0, any(vec2<bool>(false, true)), true || var_0)).a.x);
    let var_4 = global3[_wgslsmith_index_u32(4294967295u, 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1231f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -388f), var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1177f)) - var_3.a.x), var_4.a.x), firstTrailingBit(~min(u_input.b.zy, ~vec2<u32>(u_input.c.x, 87285u))));
}

