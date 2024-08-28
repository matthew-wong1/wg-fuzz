struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<u32>,
    d: i32,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 28>;

var<private> global1: u32 = 47291u;

var<private> global2: vec2<i32> = vec2<i32>(36139i, 2147483647i);

var<private> global3: Struct_4;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_5) -> u32 {
    let var_0 = vec2<f32>(-968f, -1891f);
    let var_1 = arg_0;
    let var_2 = Struct_4(~(abs(var_1.c) & vec3<u32>(41741u, 0u, var_1.c.x)) ^ select(select(arg_0.c, global3.b.d.xxx, false) << (_wgslsmith_clamp_vec3_u32(global3.c.wyw, vec3<u32>(59436u, 4294967295u, 20945u), global3.a) % vec3<u32>(32u)), arg_0.c, !arg_0.a.xzw), global3.b, countOneBits(~(global3.b.d ^ select(vec4<u32>(u_input.a.x, u_input.a.x, 127276u, 1u), vec4<u32>(45497u, 23526u, global3.a.x, 0u), vec4<bool>(false, arg_1, arg_2.a.x, arg_1)))), global3.b.a.x);
    var var_3 = global3.b;
    var_3 = var_2.b;
    return ~1u;
}

fn func_2() -> vec2<bool> {
    var var_0 = ~u_input.c.x;
    var_0 = -2147483647i;
    let var_1 = Struct_4(global3.a, Struct_1(firstTrailingBit(~vec2<i32>(0i, global2.x)), global3.b.b, global3.c, countOneBits(firstLeadingBit(global3.b.c))), countOneBits(vec4<u32>(_wgslsmith_sub_u32(func_3(Struct_3(vec4<bool>(true, true, false, true), vec3<i32>(global2.x, 2147483647i, global3.d), global3.b.d.yxy), global3.b.b.x, Struct_5(vec4<bool>(true, global3.b.b.x, true, true))), _wgslsmith_add_u32(69507u, 0u)), ~1u, ~24549u, _wgslsmith_clamp_u32(reverseBits(u_input.a.x), 56211u, ~global3.c.x))), -18137i);
    var_0 = _wgslsmith_mult_i32(-(~_wgslsmith_mod_i32(global3.d, var_1.b.a.x)), var_1.b.a.x);
    global2 = var_1.b.a & u_input.c.yx;
    return select(vec2<bool>(true, true), !vec2<bool>(!global3.b.b.x, global3.b.b.x), global3.b.b.x);
}

fn func_1(arg_0: Struct_5) -> f32 {
    let var_0 = abs(firstLeadingBit(1i));
    global2 = ~global3.b.a;
    var var_1 = -397f;
    let var_2 = !func_2();
    let var_3 = global0[_wgslsmith_index_u32(reverseBits(4294967295u), 28u)];
    return _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(587f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -588f) + -441f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!global3.b.b, vec2<bool>(!(_wgslsmith_f_op_f32(func_1(Struct_5(vec4<bool>(global3.b.b.x, true, global3.b.b.x, false)))) < _wgslsmith_div_f32(-2342f, -1418f)), false), global3.b.b);
    var_0 = vec2<bool>(true, func_2().x);
    var var_1 = global3.b;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1030f - 1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1837f, -496f)), 282f)))));
    var_0 = global3.b.b;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-957f, -259f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(197f, 1102f), vec2<f32>(-890f, 1118f), vec2<bool>(true, true))) + _wgslsmith_div_vec2_f32(vec2<f32>(156f, -2470f), vec2<f32>(-998f, 1186f))))));
    var var_4 = Struct_5(vec4<bool>(!var_1.b.x, func_2().x, var_0.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(global3.c.wyx, vec3<u32>(75234u, global3.c.x, 4294967295u)) ^ 6114u, ~min(1u, 24896u)) >> (_wgslsmith_clamp_u32(~(~4294967295u), select(~var_1.c.x, 94534u, !var_4.a.x), ~global3.a.x) % 32u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-388f)), var_3.x)));
}

