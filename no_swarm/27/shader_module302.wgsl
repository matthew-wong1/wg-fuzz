struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(31715i, 321f, false, -35557i), Struct_1(1i, 354f, false, -1i), vec4<i32>(-1i, -9301i, 58346i, 0i));

var<private> global1: array<vec3<f32>, 23>;

var<private> global2: array<Struct_2, 8>;

var<private> global3: array<Struct_4, 15>;

var<private> global4: vec4<u32> = vec4<u32>(0u, 25066u, 811u, 8843u);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: u32) -> vec2<bool> {
    return select(vec2<bool>(true, true), !vec2<bool>(false, _wgslsmith_f_op_f32(global0.b.b + -685f) < _wgslsmith_f_op_f32(189f * global0.a.b)), !(!select(vec2<bool>(false, true), vec2<bool>(false, global0.a.c), vec2<bool>(global0.a.c, global0.b.c))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>) -> f32 {
    var var_0 = countOneBits(firstTrailingBit(select(vec4<i32>(global0.c.x ^ -2147483647i, _wgslsmith_mult_i32(u_input.a.x, global0.c.x), global0.c.x >> (global4.x % 32u), u_input.a.x & 1i), ~global0.c, all(vec4<bool>(arg_1.x, global0.b.c, false, arg_1.x)))));
    let var_1 = 78626u << (_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u << (1u % 32u), ~global4.x), global4.x), global4.x) % 32u);
    global3 = array<Struct_4, 15>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b.b, -328f, global0.b.b, 235f), vec4<f32>(global0.b.b, global0.a.b, global0.a.b, global0.a.b), vec4<bool>(false, arg_1.x, false, global0.a.c))) + vec4<f32>(332f, 711f, -1468f, -1049f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.b, 382f, -387f, 1069f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1030f, -1085f, -165f, 339f)), arg_1.x)))) + vec4<f32>(1428f, _wgslsmith_f_op_f32(global0.b.b - -603f), -864f, global0.a.b));
    global0 = Struct_4(Struct_1(_wgslsmith_clamp_i32(abs(-10252i), u_input.a.x & 2147483647i, firstTrailingBit(reverseBits(var_0.x))), _wgslsmith_f_op_f32(-global0.a.b), global0.b.c, i32(-1i) * -1i), global0.b, max(max(select(global0.c, vec4<i32>(-13531i, global0.b.d, 1i, arg_0.x), arg_1.x), ~vec4<i32>(16238i, u_input.a.x, arg_0.x, 7032i)) >> (_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, u_input.c), u_input.c) % vec4<u32>(32u)), -vec4<i32>(firstLeadingBit(-1i), var_0.x, -2147483647i & global0.c.x, i32(-1i) * -1i)));
    return _wgslsmith_f_op_f32(round(-1167f));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> i32 {
    global1 = array<vec3<f32>, 23>();
    let var_0 = Struct_3(reverseBits(~_wgslsmith_div_i32(firstLeadingBit(global0.c.x), u_input.a.x)), Struct_2(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b))), global0.a), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(31151u, select(~global4.x | abs(19662u), global4.x, any(!vec4<bool>(global0.b.c, arg_3.c, arg_0, false)))), 8u)]);
    let var_1 = var_0.c.a.d | -16073i;
    global4 = vec4<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b | 1u, global4.x, _wgslsmith_dot_vec2_u32(u_input.c.ww, vec2<u32>(4294967295u, 1u))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, global4.x, 0u), vec3<u32>(u_input.c.x, 1u, 1u) << (vec3<u32>(global4.x, 1u, 20074u) % vec3<u32>(32u))), false), min(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 36886u, u_input.b), u_input.c.wzw), vec3<u32>(global4.x, abs(u_input.b), 79846u))), u_input.b, 1u, firstLeadingBit(abs(_wgslsmith_mod_u32(firstLeadingBit(u_input.c.x), 0u))));
    var var_2 = 1i;
    return abs(i32(-1i) * -2147483647i);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> vec4<i32> {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(abs(-21510i)), ~_wgslsmith_dot_vec2_i32(~u_input.a.xz, vec2<i32>(arg_0.c.a.d, 21461i))), u_input.a.zz);
    let var_1 = global4.x;
    let var_2 = u_input.c.wyw;
    var_0 = func_4(arg_1.c.a.c, Struct_2(Struct_1(arg_0.b.c.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(u_input.a, vec4<bool>(true, arg_0.c.c.c, false, false))))), true & arg_0.c.c.c, (i32(-1i) * -26925i) >> (~var_2.x % 32u)), -718f, arg_0.c.a), var_2.x > (var_2.x | global4.x), arg_1.c.a);
    global3 = array<Struct_4, 15>();
    return global0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 8>();
    let var_0 = vec2<u32>(27932u, global4.x);
    var var_1 = select(select(!select(vec2<bool>(global0.a.c, global0.b.c), vec2<bool>(true, true), select(vec2<bool>(global0.b.c, global0.a.c), vec2<bool>(false, global0.b.c), false)), select(!vec2<bool>(global0.b.c, false), vec2<bool>(true, true), vec2<bool>(true, true)), !(_wgslsmith_f_op_f32(499f * -766f) != global0.b.b)), vec2<bool>(!(!(global0.b.b > 290f)), global0.b.c), select(!(!func_1(1u)), func_1(reverseBits(1u)), vec2<bool>(false, !global0.a.c)));
    let var_2 = ~_wgslsmith_add_vec4_i32(-func_2(Struct_3(0i, Struct_2(global0.a, global0.a.b, Struct_1(global0.b.d, global0.b.b, true, 27897i)), global2[_wgslsmith_index_u32(var_0.x, 8u)]), Struct_3(1i, global2[_wgslsmith_index_u32(var_0.x, 8u)], Struct_2(global0.a, global0.a.b, Struct_1(u_input.a.x, global0.a.b, var_1.x, u_input.a.x)))), firstLeadingBit(global0.c)) ^ -abs(~global0.c);
    let var_3 = vec4<u32>(var_0.x, _wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(_wgslsmith_add_u32(9971u, var_0.x), u_input.b)), 4294967295u, 68836u);
    var var_4 = ~_wgslsmith_sub_u32(~abs(~global4.x), global4.x);
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global0.a.b)), -902f, 210f, _wgslsmith_f_op_f32(floor(208f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-239f, global0.a.b, global0.a.b, 1385f), vec4<f32>(global0.a.b, -319f, -650f, -121f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(144f, 1136f, 1000f, -710f) * vec4<f32>(global0.b.b, global0.b.b, -727f, global0.b.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.b);
}

