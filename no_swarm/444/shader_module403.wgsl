struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, true)));

var<private> global2: f32 = -122f;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u | ~u_input.a.x, 8u)];
    global2 = _wgslsmith_div_f32(-648f, _wgslsmith_f_op_f32(-global0.b.x));
    var var_1 = _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.c, u_input.c, _wgslsmith_div_i32(u_input.c, u_input.c), -14464i), vec4<i32>(~u_input.c, u_input.c, u_input.c << (0u % 32u), u_input.c))), 11157i);
    return u_input.c;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: f32) -> vec3<bool> {
    global2 = arg_3;
    let var_0 = _wgslsmith_mult_vec2_u32(abs((max(vec2<u32>(14800u, 25152u), vec2<u32>(u_input.b.x, 17600u)) >> (~vec2<u32>(1u, arg_1.x) % vec2<u32>(32u))) ^ vec2<u32>(1u, 4294967295u & arg_0.x)), ~(~firstLeadingBit(~vec2<u32>(57447u, arg_1.x))));
    let var_1 = Struct_3(global0.a.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_add_u32(global0.c, reverseBits(75939u)), max(_wgslsmith_mult_u32(arg_1.x | global0.c, u_input.a.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, u_input.b.x, arg_1.x)), ~22388u))), 8u)], vec4<u32>(60510u >> (_wgslsmith_div_u32(1u, arg_1.x) % 32u), _wgslsmith_add_u32(select(global0.c, u_input.b.x, global0.a.x), _wgslsmith_div_u32(4294967295u, arg_0.x)), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a.x, 1u), 22288u), 69809u) | countOneBits(vec4<u32>(_wgslsmith_div_u32(44708u, u_input.d), _wgslsmith_clamp_u32(var_0.x, u_input.a.x, 1072u), 1u, _wgslsmith_mult_u32(0u, 30398u))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-476f, _wgslsmith_f_op_f32(global0.b.x - global0.b.x))) + -255f);
    global1 = array<Struct_1, 8>();
    return global0.a;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = !arg_0.a.x;
    var var_1 = Struct_2(select(func_4(~u_input.a.xy, _wgslsmith_clamp_vec2_u32(vec2<u32>(20436u, 4294967295u), min(u_input.b, vec2<u32>(28535u, 0u)), firstLeadingBit(vec2<u32>(u_input.d, u_input.d))), vec4<i32>(func_3(491f, Struct_2(vec3<bool>(global0.a.x, global0.a.x, global0.a.x), global0.b, 0u)), 2147483647i, _wgslsmith_div_i32(1i, u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 0i, u_input.c, 2147483647i), vec4<i32>(u_input.c, u_input.c, 11759i, 2147483647i))), _wgslsmith_f_op_f32(trunc(1000f))), arg_0.a, all(vec2<bool>(all(arg_0.a), false))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global0.b - vec4<f32>(global0.b.x, -1053f, global0.b.x, 1000f)), _wgslsmith_f_op_vec4_f32(ceil(global0.b)), any(global0.a.zy))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global0.b), _wgslsmith_f_op_vec4_f32(-global0.b))) * vec4<f32>(-279f, -637f, global0.b.x, _wgslsmith_f_op_f32(global0.b.x + 893f)))), u_input.b.x);
    let var_2 = ~(_wgslsmith_add_vec3_i32(~vec3<i32>(1i, u_input.c, 19722i), -(~vec3<i32>(u_input.c, u_input.c, u_input.c))) | _wgslsmith_mod_vec3_i32(~(-vec3<i32>(2147483647i, u_input.c, u_input.c)), _wgslsmith_div_vec3_i32(vec3<i32>(-37489i, -2147483647i, -6644i) >> (vec3<u32>(global0.c, u_input.b.x, var_1.c) % vec3<u32>(32u)), vec3<i32>(2891i, 0i, u_input.c))));
    var_0 = true;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global0.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1183f, -1492f)) * var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))))));
    return arg_0;
}

fn func_1() -> Struct_2 {
    var var_0 = global0.b.xx;
    var var_1 = Struct_3(!global0.a.x, func_2(global1[_wgslsmith_index_u32(9543u, 8u)]), abs(_wgslsmith_add_vec4_u32(vec4<u32>(6040u, ~global0.c, ~64344u, ~32136u), (vec4<u32>(u_input.a.x, 3557u, u_input.d, 31900u) << (vec4<u32>(global0.c, 1u, global0.c, 1u) % vec4<u32>(32u))) << (~vec4<u32>(global0.c, global0.c, 4294967295u, 103153u) % vec4<u32>(32u)))));
    global2 = -411f;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x - -461f))))) - _wgslsmith_f_op_f32(f32(-1f) * -1035f));
    global0 = Struct_2(global0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global0.b.x, -2422f), -1000f, var_0.x, -243f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global0.b), global0.b)))), ~(min(min(1u, 1u), 9069u) | reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, global0.c), var_1.c.wyy))));
    return Struct_2(!(!var_1.b.a), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b - global0.b) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-785f, -1000f, 705f, -1295f)))))), countOneBits(var_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = global0.c;
    var var_1 = func_2(Struct_1(func_4(~u_input.a.xz, min(u_input.a.xx, ~u_input.b), vec4<i32>(firstTrailingBit(44220i), abs(u_input.c), _wgslsmith_mult_i32(-5777i, u_input.c), 2147483647i << (global0.c % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x * -731f) * _wgslsmith_f_op_f32(-718f - -364f)))));
    let var_2 = global1[_wgslsmith_index_u32(66302u, 8u)];
    let var_3 = ~41647i;
    var var_4 = Struct_3(!(!var_2.a.x), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.c, _wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(global0.c, u_input.b.x, 0u, 4294967295u)), vec4<u32>(1u, _wgslsmith_mult_u32(112118u, u_input.b.x), global0.c, 0u))), 8u)], _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 33947u, u_input.b.x, ~func_1().c), max(select(select(vec4<u32>(global0.c, global0.c, 0u, 696u), vec4<u32>(28621u, 0u, 118819u, 4294967295u), vec4<bool>(true, true, global0.a.x, global0.a.x)), ~vec4<u32>(global0.c, 1u, 4294967295u, 4294967295u), vec4<bool>(false, var_1.a.x, true, var_2.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 61133u, u_input.a.x), vec4<u32>(33980u, 24393u, 0u, u_input.b.x)) << (~vec4<u32>(24031u, 4294967295u, global0.c, 0u) % vec4<u32>(32u)))));
    global1 = array<Struct_1, 8>();
    let var_5 = !(!vec2<bool>(false, func_1().a.x));
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(687f, global0.b.x) * _wgslsmith_f_op_f32(-global0.b.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(var_4.c.x, _wgslsmith_add_u32(var_4.c.x & 0u, 36647u & global0.c)));
}

