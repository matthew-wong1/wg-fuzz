struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(2147483647i, -5106i, -9621i, 30607i), Struct_1(31939u, 700f, vec2<f32>(404f, -1084f), 17316i), Struct_1(25490u, 1837f, vec2<f32>(-1235f, -920f), 0i));

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(685u, -707f, vec2<f32>(-763f, -2248f), -1i), Struct_1(113261u, 937f, vec2<f32>(1000f, 1073f), -43747i), Struct_1(12068u, 651f, vec2<f32>(-199f, -190f), 0i), Struct_1(38365u, 2005f, vec2<f32>(-146f, 1712f), 39108i));

var<private> global2: array<f32, 25>;

var<private> global3: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec3<f32>) -> f32 {
    var var_0 = global0.a.xwx & arg_1.a.www;
    let var_1 = arg_0;
    var_0 = _wgslsmith_mult_vec3_i32(global0.a.wyx >> (vec3<u32>(~(~10713u), 1u, arg_1.c.a >> (arg_1.c.a % 32u)) % vec3<u32>(32u)), -reverseBits(vec3<i32>(-9501i, 22800i, -27097i)));
    var_0 = ~firstTrailingBit(select(u_input.a.yzy, vec3<i32>(-1i, 9815i, -54412i), vec3<bool>(true, 48611u >= global0.c.a, true)));
    var var_2 = min(firstTrailingBit(~countOneBits(max(vec2<u32>(global0.c.a, 4294967295u), vec2<u32>(4294967295u, arg_1.c.a)))), ~(~((vec2<u32>(arg_1.c.a, arg_1.c.a) ^ vec2<u32>(56742u, arg_1.b.a)) >> ((vec2<u32>(46025u, arg_1.b.a) ^ vec2<u32>(0u, 1u)) % vec2<u32>(32u)))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-157f, _wgslsmith_f_op_f32(sign(arg_2.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -970f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1;
    let var_1 = Struct_2(reverseBits(_wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, var_0.d, arg_1.d, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.d, global0.a.x, var_0.d, -60489i), u_input.b, vec4<i32>(-2147483647i, 2147483647i, 1i, global0.b.d)))) ^ vec4<i32>(arg_1.d, firstTrailingBit(-55488i), _wgslsmith_dot_vec4_i32(vec4<i32>(-11015i, global0.c.d, -37680i, 6325i), vec4<i32>(11344i, 0i, 1i, 2147483647i)) & countOneBits(var_0.d), 1i), global0.b, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(113294u, global0.c.a), 4u)]);
    var var_2 = vec4<i32>(abs(reverseBits(-(~(-1i)))), -48641i, 13322i, 65213i);
    var var_3 = !vec3<bool>(true, true, any(vec2<bool>(true, true)));
    let var_4 = Struct_2(global0.a, arg_1, Struct_1(reverseBits(global0.c.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(min(var_0.b, arg_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1.c, Struct_2(global0.a, Struct_1(var_0.a, var_1.c.b, arg_0.c, 31988i), Struct_1(var_1.c.a, global2[_wgslsmith_index_u32(global0.c.a, 25u)], vec2<f32>(var_0.c.x, global2[_wgslsmith_index_u32(4294967295u, 25u)]), -25053i)), vec3<f32>(143f, -419f, global0.b.c.x)))), true)), vec2<f32>(_wgslsmith_f_op_f32(-global0.b.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -991f) * _wgslsmith_f_op_f32(abs(arg_0.c.x)))), reverseBits(var_1.a.x)));
    return 10453i;
}

fn func_1() -> Struct_2 {
    let var_0 = !(!vec2<bool>(false, all(vec3<bool>(true, false, false))));
    global1 = array<Struct_1, 4>();
    global0 = Struct_2(global0.a ^ vec4<i32>(_wgslsmith_mult_i32(func_2(global0.c, Struct_1(0u, -499f, global0.c.c, u_input.a.x)), i32(-1i) * -2147483647i), abs(-10721i) >> (1u % 32u), ~(0i | u_input.b.x), _wgslsmith_dot_vec2_i32(global0.a.xx, u_input.a.zz) ^ 2147483647i), global0.c, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u ^ ~_wgslsmith_mod_u32(0u, global0.c.a), global0.c.a), 4u)]);
    var var_1 = vec4<u32>(global0.b.a, reverseBits(global0.b.a), ~abs(~(~4294967295u)), 1u);
    var var_2 = global1[_wgslsmith_index_u32(var_1.x, 4u)];
    return Struct_2(~_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(global0.a.x, global0.a.x, 1i, 0i)) ^ vec4<i32>(u_input.c, global0.b.d, -1i, u_input.c), vec4<i32>(-1i) * -u_input.a), Struct_1(var_1.x, 1938f, vec2<f32>(-1149f, _wgslsmith_f_op_f32(f32(-1f) * -264f)), ~(1i & _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.d, u_input.b.x), u_input.a.yx))), Struct_1(24602u, 1f, vec2<f32>(1852f, _wgslsmith_f_op_f32(var_2.c.x - _wgslsmith_f_op_f32(var_2.c.x * 764f))), var_2.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec4<u32>(_wgslsmith_add_u32(~(~global0.b.a << (0u % 32u)), var_0.c.a), var_0.c.a, 4294967295u, 1u);
    var_0 = Struct_2(firstTrailingBit(_wgslsmith_clamp_vec4_i32(global0.a, -vec4<i32>(var_0.a.x, 0i, global0.b.d, 22673i), func_1().a)) & -(~(var_0.a >> (vec4<u32>(var_0.b.a, var_1.x, 4294967295u, 1u) % vec4<u32>(32u)))), var_0.c, func_1().c);
    global2 = array<f32, 25>();
    global0 = func_1();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_0.c.b, 1561f, false)))), global0.b.b, -1632f)));
    let var_3 = Struct_3(!all(vec2<bool>(true, true)) && true);
    var var_4 = select(var_3.a, false, select(true, false, all(select(!vec4<bool>(var_3.a, var_3.a, var_3.a, false), vec4<bool>(var_3.a, false, false, var_3.a), var_3.a & var_3.a))));
    global3 = global0.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec2_u32(vec2<u32>(~global0.c.a, ~global0.b.a), select(vec2<u32>(0u, var_1.x), var_1.xw, vec2<bool>(var_3.a, false)) ^ vec2<u32>(global0.b.a, 58566u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-687f * -527f))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(814f + -1000f), 1394f), global0.b.b)), vec2<i32>(-21027i, _wgslsmith_div_i32(2147483647i, -1i)), ~var_0.a.x, vec2<i32>(((-1i >> (var_0.c.a % 32u)) ^ (i32(-1i) * -10767i)) ^ ~global0.c.d, _wgslsmith_clamp_i32(global0.b.d, 43042i, global0.a.x)));
}

