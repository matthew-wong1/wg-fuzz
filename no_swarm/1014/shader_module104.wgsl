struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<Struct_2, 2>;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-510f, -1416f, 844f, -360f), vec3<bool>(false, false, true), i32(-2147483648));

var<private> global2: array<u32, 22> = array<u32, 22>(40013u, 48426u, 1u, 35403u, 0u, 39988u, 0u, 73785u, 1u, 4294967295u, 0u, 17012u, 4294967295u, 70523u, 0u, 11695u, 69237u, 0u, 0u, 0u, 0u, 4294967295u);

var<private> global3: array<vec4<u32>, 16>;

var<private> global4: u32;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> u32 {
    global0 = array<Struct_2, 2>();
    var var_0 = vec4<i32>(-1i) * -vec4<i32>(~(~global1.c), global1.c, global1.c, 2147483647i);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1757f + global1.a.x), _wgslsmith_f_op_f32(min(312f, -2526f)), -1000f, -186f) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(global1.a, vec4<f32>(1649f, 773f, arg_0.x, -989f))))) * _wgslsmith_div_vec4_f32(global1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global1.a))))), !vec3<bool>(any(vec2<bool>(false, global1.b.x)), false, any(select(vec2<bool>(false, global1.b.x), global1.b.zy, global1.b.yx))), global1.c);
    let var_2 = max(firstLeadingBit(~(~vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 22u)]) >> (firstTrailingBit(vec2<u32>(arg_1, u_input.a)) % vec2<u32>(32u)))), firstLeadingBit(~vec2<u32>(_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1, 22u)], 16u)], global3[_wgslsmith_index_u32(4294967295u, 16u)]), ~1u)));
    let var_3 = var_1;
    return 23213u;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: i32) -> u32 {
    global4 = ~14462u;
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-754f, -3119f, _wgslsmith_f_op_f32(max(1562f, 748f)), _wgslsmith_f_op_f32(353f - 123f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(arg_1, global1.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_0.b.a))))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-global1.a), arg_0.a, _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-21117i, 2147483647i, global1.c, -18598i), vec4<i32>(arg_0.b.c, -24858i, arg_0.b.c, -1i)), abs(arg_0.b.c)), -13849i), -1i));
    let var_2 = abs(vec3<u32>(_wgslsmith_div_u32(u_input.a, 18638u) & ~31360u, global2[_wgslsmith_index_u32(firstLeadingBit(global2[_wgslsmith_index_u32(11362u, 22u)]), 22u)] << (48810u % 32u), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.a, 4669u), 22u)]) & select(~vec3<u32>(28961u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 22u)], 22u)], u_input.a) | _wgslsmith_div_vec3_u32(vec3<u32>(1u, 21931u, global2[_wgslsmith_index_u32(1u, 22u)]), vec3<u32>(u_input.a, 4294967295u, 0u)), ~vec3<u32>(0u, 55185u, 62u), true));
    let var_3 = arg_0.b;
    return var_2.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(select(global1.b, !select(global1.b, vec3<bool>(true, true, global1.b.x), !global1.b.x), global1.b.x), Struct_1(_wgslsmith_f_op_vec4_f32(-global1.a), !select(!global1.b, vec3<bool>(global1.b.x, false, false), select(global1.b, vec3<bool>(global1.b.x, false, global1.b.x), true)), _wgslsmith_mult_i32(~abs(0i), _wgslsmith_add_i32(global1.c, _wgslsmith_mult_i32(global1.c, 42183i)))));
    let var_1 = var_0.b;
    global3 = array<vec4<u32>, 16>();
    let var_2 = var_0.b;
    global4 = func_4(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(min(abs(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1198f, -1655f, -1424f) - vec3<f32>(var_1.a.x, 367f, 448f)), firstLeadingBit(global2[_wgslsmith_index_u32(u_input.a, 22u)]))), u_input.a), 22u)], 2u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global1.a.x, 1f), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(trunc(var_1.a.x)), _wgslsmith_f_op_f32(1299f * _wgslsmith_f_op_f32(-var_0.b.a.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_2.a)) - global1.a))), var_1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-5171i, global1.c) >> (~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(38570u, 22u)], 22u)] % 32u), -(~var_1.c), _wgslsmith_div_i32(-var_1.c, 1i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(var_0.b.c, 2147483647i), -14180i >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(81831u, 22u)], 22u)] % 32u))), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(global1.c, var_2.c, var_2.c, 10459i)), vec4<i32>(global1.c, 1i, var_1.c, 1i)) << ((abs(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 22u)], 22u)], 38369u, u_input.a, u_input.a)) & ~vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(u_input.a, 22u)], u_input.a, global2[_wgslsmith_index_u32(0u, 22u)])) % vec4<u32>(32u))));
    return var_1;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> StorageBuffer {
    global3 = array<vec4<u32>, 16>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(arg_3.a)), vec3<bool>(all(!vec4<bool>(true, true, global1.b.x, false)), ~(~arg_1.c) < 57046i, all(vec4<bool>(true, true, true, true))), ~_wgslsmith_sub_i32(-37533i, -global1.c));
    global1 = func_2();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(arg_3.a.x, 143f, 1919f, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-778f, -1413f, global1.a.x, 829f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_3.a, vec4<f32>(var_0.a.x, -338f, -1000f, var_0.a.x)))), all(vec3<bool>(var_0.b.x, false, false))))), arg_1.b, countOneBits(arg_3.c));
    global0 = array<Struct_2, 2>();
    return StorageBuffer(~(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(8219u, 22u)]) >> (1u % 32u)) & max(1u, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(reverseBits(~(~global2[_wgslsmith_index_u32(1u, 22u)])), global2[_wgslsmith_index_u32(~u_input.a, 22u)]);
    let var_1 = !(true || any(!vec4<bool>(true, global1.b.x, global1.b.x, global1.b.x)));
    let var_2 = global0[_wgslsmith_index_u32(u_input.a >> (0u % 32u), 2u)];
    var var_3 = Struct_2(vec3<bool>(true, false, !(!(global1.c < global1.c))), var_2.b);
    let var_4 = 4294967295u;
    let var_5 = Struct_2(global1.b, Struct_1(var_3.b.a, vec3<bool>(true, var_1, true), 4241i));
    var var_6 = vec2<bool>(!(!(_wgslsmith_div_i32(var_2.b.c, 7432i) != (var_2.b.c >> (0u % 32u)))), select(global1.b.x, true, (686f > _wgslsmith_f_op_f32(floor(1176f))) || (_wgslsmith_f_op_f32(-var_2.b.a.x) <= _wgslsmith_f_op_f32(1622f + 2624f))));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_div_i32(abs(-1i), _wgslsmith_mult_i32(~2147483647i >> (~var_4 % 32u), -_wgslsmith_add_i32(var_5.b.c, var_3.b.c))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.b.a.x, var_2.b.a.x, var_2.b.a.x, 1000f)) * _wgslsmith_f_op_vec4_f32(-var_3.b.a)) * var_2.b.a), var_2.b.b, abs(reverseBits(abs(var_3.b.c)))), 4294967295u, var_2.b);
}

