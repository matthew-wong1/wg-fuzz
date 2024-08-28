struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_3,
    e: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<f32>,
    c: u32,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: i32 = 97198i;

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec4<i32>(0i, i32(-2147483648), 2726i, 3811i), vec3<u32>(4294967295u, 1u, 1u), vec2<u32>(0u, 0u), 2147483647i), Struct_2(vec4<i32>(-7141i, 1i, 0i, -27163i), vec3<u32>(0u, 25175u, 3061u), vec2<u32>(0u, 86017u), 1i), Struct_2(vec4<i32>(-37424i, -16014i, 1i, -77065i), vec3<u32>(1u, 53506u, 11470u), vec2<u32>(1u, 0u), -1i), Struct_2(vec4<i32>(26451i, 1i, 19430i, 0i), vec3<u32>(45925u, 63131u, 25656u), vec2<u32>(4294967295u, 1u), 0i), Struct_2(vec4<i32>(-24322i, -24807i, -9726i, 0i), vec3<u32>(393u, 12181u, 4294967295u), vec2<u32>(0u, 0u), 0i), Struct_2(vec4<i32>(9680i, -1i, i32(-2147483648), -10498i), vec3<u32>(4466u, 23523u, 1u), vec2<u32>(9521u, 92476u), 0i), Struct_2(vec4<i32>(0i, 0i, i32(-2147483648), -24058i), vec3<u32>(48581u, 0u, 1u), vec2<u32>(32430u, 4294967295u), 2147483647i), Struct_2(vec4<i32>(-1i, -22263i, i32(-2147483648), 89480i), vec3<u32>(1u, 4294967295u, 118960u), vec2<u32>(1u, 0u), -1i), Struct_2(vec4<i32>(-1i, -41383i, -9335i, -2357i), vec3<u32>(97963u, 4294967295u, 79192u), vec2<u32>(1u, 4294967295u), i32(-2147483648)), Struct_2(vec4<i32>(2147483647i, -4648i, -21357i, -47464i), vec3<u32>(18909u, 13667u, 1u), vec2<u32>(4294967295u, 13547u), 0i), Struct_2(vec4<i32>(12557i, 0i, 0i, 24372i), vec3<u32>(4294967295u, 0u, 51055u), vec2<u32>(18560u, 4294967295u), -1i), Struct_2(vec4<i32>(i32(-2147483648), -14461i, 1i, -8717i), vec3<u32>(17686u, 4294967295u, 0u), vec2<u32>(0u, 3313u), 3465i), Struct_2(vec4<i32>(1i, -8648i, 20289i, 33957i), vec3<u32>(24138u, 1u, 32306u), vec2<u32>(78209u, 49775u), -33653i), Struct_2(vec4<i32>(-1605i, 1i, 1i, 2147483647i), vec3<u32>(39757u, 1u, 31859u), vec2<u32>(32824u, 54226u), -1i), Struct_2(vec4<i32>(i32(-2147483648), -37229i, 1i, -41608i), vec3<u32>(1u, 0u, 4697u), vec2<u32>(22742u, 36107u), -12409i), Struct_2(vec4<i32>(-41322i, -19336i, 1i, -1637i), vec3<u32>(8231u, 16998u, 18823u), vec2<u32>(0u, 20183u), -1i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<f32>) -> vec2<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -127f), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-342f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-231f * arg_0.x) * arg_0.x))));
    let var_1 = global2[_wgslsmith_index_u32(~0u, 16u)];
    global2 = array<Struct_2, 16>();
    global1 = select(u_input.a.x, -2147483647i, var_1.c.x <= ~1u);
    let var_2 = Struct_1(_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 36092u, var_1.b.x, 10381u), ~vec4<u32>(var_1.c.x, 4294967295u, var_1.b.x, 0u)), reverseBits(1u)), 39564u));
    return !vec2<bool>(select(all(vec3<bool>(true, true, true)), false, true), !(~var_2.a > (1u | var_2.a)));
}

fn func_2() -> Struct_4 {
    global1 = 1i;
    var var_0 = -1470f;
    var var_1 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, ~1u), 16u)], 0u, Struct_1(abs(15193u)));
    global2 = array<Struct_2, 16>();
    var var_2 = global0[_wgslsmith_index_u32(17496u, 28u)];
    return Struct_4(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1080f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + 380f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-1891f - -1202f))), _wgslsmith_f_op_f32(1089f + 1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1363f))))), !select(select(vec2<bool>(true, true), func_3(vec2<f32>(1000f, 1888f)), any(vec3<bool>(false, false, true))), vec2<bool>(var_2.b.x < 18579u, all(vec3<bool>(true, false, false))), true), Struct_2(~var_2.a, ~vec3<u32>(min(var_2.b.x, 1u), var_1.b, _wgslsmith_div_u32(var_2.c.x, var_1.a.c.x)), max(vec2<u32>(_wgslsmith_mult_u32(var_2.b.x, var_2.c.x), var_1.a.c.x), countOneBits(var_2.c) >> (vec2<u32>(var_2.b.x, 0u) % vec2<u32>(32u))), 24092i), Struct_3(Struct_2(var_2.a, countOneBits(~vec3<u32>(var_1.c.a, 0u, 45923u)), var_2.b.zx, -2147483647i), reverseBits(_wgslsmith_mod_u32(var_2.c.x | var_2.b.x, ~var_2.c.x)), var_1.c), -132f);
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: i32) -> StorageBuffer {
    var var_0 = func_2();
    let var_1 = _wgslsmith_mult_i32(~(-_wgslsmith_mult_i32(arg_2, -arg_2)), max(~var_0.d.a.d, _wgslsmith_dot_vec4_i32(arg_0, var_0.d.a.a)));
    global2 = array<Struct_2, 16>();
    let var_2 = func_2();
    global0 = array<Struct_2, 28>();
    return StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.a.xw))) - var_0.a.xx), vec2<f32>(1000f, -555f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 16>();
    global1 = ~19499i;
    let var_0 = -19197i;
    let x = u_input.a;
    s_output = func_1(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a.x, var_0, 0i, -29900i) & select(vec4<i32>(u_input.a.x, 2147483647i, var_0, var_0), vec4<i32>(u_input.a.x, 22633i, u_input.a.x, -25841i), vec4<bool>(false, false, false, true)), -(vec4<i32>(-45446i, u_input.a.x, 1i, 2147483647i) | vec4<i32>(-15242i, u_input.a.x, u_input.a.x, -1i))), -vec4<i32>(2147483647i, -17319i, -21417i, var_0)), false, u_input.a.x & _wgslsmith_mult_i32(0i, ~(-2147483647i)));
}

