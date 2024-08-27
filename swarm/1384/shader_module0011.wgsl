struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
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

var<private> global0: vec3<u32>;

var<private> global1: array<vec4<i32>, 8>;

var<private> global2: array<bool, 16>;

var<private> global3: Struct_3 = Struct_3(4294967295u, Struct_2(vec4<f32>(-885f, 580f, 1397f, -1387f), vec4<f32>(-632f, 1761f, -1362f, 997f), Struct_1(vec2<u32>(9985u, 11697u), 38074u, vec3<i32>(-24800i, -31997i, -1i), vec2<i32>(1i, i32(-2147483648))), Struct_1(vec2<u32>(1u, 79134u), 4294967295u, vec3<i32>(14880i, -19954i, 1i), vec2<i32>(-2856i, 6770i)), 1i), Struct_1(vec2<u32>(1u, 9559u), 0u, vec3<i32>(-21383i, 0i, 0i), vec2<i32>(2147483647i, 33351i)), vec2<bool>(true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global1 = array<vec4<i32>, 8>();
    global3 = Struct_3(_wgslsmith_clamp_u32(arg_0.c.a.x, max(_wgslsmith_add_u32(u_input.e, _wgslsmith_mod_u32(global3.b.d.b, global0.x)), _wgslsmith_mod_u32(max(u_input.e, 28802u), ~global3.b.d.a.x)), _wgslsmith_sub_u32(~global0.x, ~abs(0u))), global3.b, global3.c, vec2<bool>(false, any(!select(vec3<bool>(true, true, true), vec3<bool>(global3.d.x, false, global3.d.x), vec3<bool>(global3.d.x, global2[_wgslsmith_index_u32(39247u, 16u)], global3.d.x)))));
    global0 = vec3<u32>(global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(global0.x, 4294967295u) << (~0u % 32u), ~(u_input.e ^ 0u), _wgslsmith_mult_u32(global0.x & u_input.e, global3.a)), reverseBits(~vec3<u32>(79717u, global0.x, u_input.e)) & (~vec3<u32>(global3.b.d.a.x, global3.b.c.b, 0u) >> ((vec3<u32>(u_input.e, 1u, 41089u) ^ vec3<u32>(1u, 0u, global0.x)) % vec3<u32>(32u)))), 1u);
    var var_0 = abs(~vec2<u32>(4294967295u, 1u) & global3.b.d.a) >> (global3.b.d.a % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(arg_0.b.zxz));
    return ~4860u;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(global3.b.b, global3.b.a, Struct_1(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, arg_0.b), ~global3.c.a, vec2<u32>(46488u, arg_0.a.x))), _wgslsmith_add_u32(1u, ~u_input.e), u_input.a.xzx, _wgslsmith_div_vec2_i32(abs(-global3.c.c.yz), ~global3.c.c.zz)), global3.c, -7977i);
    let var_1 = ~(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 16442u) ^ global3.c.a, max(arg_0.a, arg_0.a)), u_input.e));
    var var_2 = ~(~vec4<u32>(u_input.e, ~(~u_input.e), var_0.d.a.x << (_wgslsmith_clamp_u32(global0.x, 4294967295u, arg_0.b) % 32u), var_0.d.a.x));
    var_2 = vec4<u32>(1u, ~(4294967295u << (func_3(Struct_2(vec4<f32>(-345f, global3.b.b.x, -302f, global3.b.b.x), global3.b.b, Struct_1(vec2<u32>(var_1, var_1), 783u, vec3<i32>(2147483647i, global3.b.e, arg_0.c.x), arg_0.c.yx), global3.c, 2147483647i)) % 32u)), abs(~reverseBits(var_0.c.b)), _wgslsmith_dot_vec2_u32(var_0.d.a, ~max(~vec2<u32>(31002u, 3724u), var_2.zz)));
    let var_3 = vec3<bool>(any(!vec4<bool>(true, var_0.b.x <= 1150f, false, true)), true, all(!vec3<bool>(true, select(false, global3.d.x, global2[_wgslsmith_index_u32(arg_0.a.x, 16u)]), !global2[_wgslsmith_index_u32(22265u, 16u)])));
    return global3.c;
}

fn func_1() -> f32 {
    var var_0 = max(_wgslsmith_div_i32(~global3.c.c.x, global3.b.d.d.x) << (~abs(1u) % 32u), 14885i) >> (u_input.e % 32u);
    var var_1 = func_2(global3.b.d);
    let var_2 = global3.b.a.x;
    var var_3 = -1593f;
    var var_4 = ~vec4<i32>(0i, global3.c.c.x, _wgslsmith_add_i32(82i, global3.b.e), -27647i ^ _wgslsmith_add_i32(-var_1.d.x, 0i & var_1.d.x));
    return -1237f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-357f, global3.b.b.x, global3.b.b.x, global3.b.a.x)));
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + 1538f) + var_0.x), _wgslsmith_div_f32(-1601f, global3.b.b.x), -920f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-354f, 106f, true)))) + -398f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1076f - -1000f))), _wgslsmith_f_op_f32(func_1()), -887f, _wgslsmith_f_op_f32(-var_0.x))), Struct_1(~vec2<u32>(0u, 1u) & global3.b.d.a, global3.b.d.b, reverseBits(countOneBits(countOneBits(global3.c.c))), vec2<i32>(u_input.a.x, abs(~global3.c.d.x))), func_2(Struct_1(vec2<u32>(u_input.e, 53731u), u_input.e, abs(global3.c.c << (vec3<u32>(global3.a, u_input.e, u_input.e) % vec3<u32>(32u))), global3.c.c.xy)), 3161i);
    var var_2 = !(!(!(!(!vec3<bool>(true, true, global2[_wgslsmith_index_u32(20690u, 16u)])))));
    global0 = ~abs(select(firstTrailingBit(vec3<u32>(global3.b.d.a.x, u_input.e, global3.a)) ^ ~vec3<u32>(44920u, global3.b.d.b, 9725u), ~(~vec3<u32>(1u, global0.x, 3885u)), true | var_2.x));
    global0 = vec3<u32>(u_input.e, ~(~(~max(117279u, global0.x))), abs(var_1.c.a.x));
    global1 = array<vec4<i32>, 8>();
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(var_1.a - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1305f, _wgslsmith_f_op_f32(round(2048f)), _wgslsmith_div_f32(-1338f, -1880f), var_1.b.x)))), _wgslsmith_f_op_vec4_f32(exp2(global3.b.b)), var_1.d, func_2(Struct_1(~(~var_1.d.a), 0u, u_input.a.xxw ^ global3.b.d.c, var_1.c.d)), -select(1i, -959i, !var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(~global3.b.c.c, min(var_3.c.c, var_3.c.c) ^ reverseBits(var_3.d.c), select(vec3<bool>(global3.d.x, var_2.x, global3.d.x), select(vec3<bool>(global3.d.x, true, global2[_wgslsmith_index_u32(u_input.e, 16u)]), vec3<bool>(false, false, true), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 16u)], global3.d.x, false)), global3.d.x)) >> (vec3<u32>(func_2(global3.b.d).a.x, _wgslsmith_sub_u32(var_1.d.a.x, 4294967295u) | var_1.d.a.x, global3.b.c.a.x) % vec3<u32>(32u)), select(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(~1i, ~1i)), abs(func_2(global3.b.d).d.x), global3.d.x));
}

