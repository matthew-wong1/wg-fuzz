struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec3<u32>;

var<private> global2: array<vec4<i32>, 15>;

var<private> global3: array<Struct_3, 10>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: f32) -> f32 {
    global0 = vec2<bool>(select(!all(vec4<bool>(global0.x, global0.x, false, global0.x)), ((global0.x != true) | global0.x) || !select(true, global0.x, global0.x), global0.x), !global0.x);
    let var_0 = vec3<u32>(~_wgslsmith_mod_u32(~u_input.b.x >> (global1.x % 32u), ~86396u), 51526u, 62315u);
    var var_1 = Struct_3(1i, u_input.d);
    var_1 = Struct_3(1i, -countOneBits(_wgslsmith_mod_vec2_i32(u_input.d, -u_input.d)));
    let var_2 = arg_1;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-930f)), _wgslsmith_f_op_f32(abs(arg_2))));
}

fn func_2() -> Struct_3 {
    var var_0 = u_input.a;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-148f * 820f), -729f, false & global0.x)))), -502f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.d.x, Struct_3(52815i, vec2<i32>(u_input.d.x, u_input.d.x)), -565f))) != _wgslsmith_f_op_f32(trunc(732f)))), any(vec2<bool>(false, !global0.x)), max(abs(firstTrailingBit(14992i)), u_input.d.x));
    var var_2 = global3[_wgslsmith_index_u32(1u, 10u)];
    let var_3 = global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(((u_input.b.x >> (global1.x % 32u)) << (global1.x % 32u)) >> (abs(~4294967295u) % 32u), 1u)), 10u)];
    var_0 = ~_wgslsmith_mult_i32(u_input.a, 1i >> (~_wgslsmith_mult_u32(global1.x, global1.x) % 32u));
    return Struct_3(u_input.a, ~(var_3.b | ~_wgslsmith_mod_vec2_i32(u_input.d, var_3.b)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3) -> f32 {
    let var_0 = u_input.b;
    var var_1 = vec4<bool>(true, true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(129f, 329f)))))) == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(-2147483647i, global3[_wgslsmith_index_u32(abs(1u), 10u)], -430f)))), !(!(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, global1.x), var_0) != var_0.x)));
    let var_2 = Struct_2(~vec3<u32>(u_input.c.x, min(4294967295u, 1u), ~11431u) & reverseBits(~_wgslsmith_clamp_vec3_u32(var_0, var_0, u_input.c.wyy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-444f, -138f, var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<f32>(_wgslsmith_f_op_f32(-1055f - 448f), 115f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1016f) - vec2<f32>(599f, 1000f))))), var_1.xy, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-235f - _wgslsmith_f_op_f32(max(-701f, 603f)))), global1.x != 4294967295u, arg_1.a), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1894f))), any(select(var_1.yz, vec2<bool>(var_1.x, arg_0.x), arg_0.yz)), -firstLeadingBit(-arg_1.a)));
    global1 = select(~(~_wgslsmith_sub_vec3_u32(u_input.b, var_0) << ((~vec3<u32>(29559u, global1.x, global1.x) & max(vec3<u32>(global1.x, 0u, 83869u), u_input.b)) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(~vec3<u32>(var_0.x, 1u, var_0.x), ~vec3<u32>(9701u, 42755u, 127161u) ^ _wgslsmith_add_vec3_u32(var_0, vec3<u32>(33517u, 25352u, var_0.x) >> (var_0 % vec3<u32>(32u)))), arg_0);
    global0 = var_1.ww;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.x * -699f), var_2.b.x);
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(!vec3<bool>(global0.x, true, global0.x), func_2())))));
    global2 = array<vec4<i32>, 15>();
    var var_1 = global3[_wgslsmith_index_u32(94754u, 10u)];
    global1 = ~u_input.b;
    global3 = array<Struct_3, 10>();
    return Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -272f)) * var_0))), global0.x, -39620i);
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    let var_0 = 20632i;
    global1 = firstTrailingBit(abs(vec3<u32>(global1.x, global1.x, u_input.b.x)));
    let var_1 = ~abs(~(~vec2<u32>(u_input.c.x, 106279u)));
    let var_2 = Struct_2(vec3<u32>(u_input.b.x, _wgslsmith_div_u32(_wgslsmith_add_u32(min(u_input.c.x, u_input.b.x), min(18356u, 13716u)), ~(~4294967295u)), _wgslsmith_mod_u32(~var_1.x, (u_input.b.x >> (var_1.x % 32u)) | ~41416u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, 712f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, 1224f)), vec2<f32>(611f, arg_0.a), select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(true, global0.x), vec2<bool>(false, false)))) - vec2<f32>(-1064f, arg_0.a))), select(!select(vec2<bool>(true, true), select(vec2<bool>(true, global0.x), vec2<bool>(true, true), vec2<bool>(global0.x, global0.x)), true || global0.x), !select(vec2<bool>(global0.x, arg_0.b), select(vec2<bool>(true, arg_0.b), vec2<bool>(arg_0.b, false), arg_0.b), select(vec2<bool>(true, global0.x), vec2<bool>(arg_0.b, true), false)), vec2<bool>(true, any(vec3<bool>(false, global0.x, global0.x)) == true)), arg_0, Struct_1(arg_0.a, true, -1i));
    global0 = vec2<bool>(any(!select(!vec3<bool>(global0.x, true, arg_0.b), vec3<bool>(global0.x, true, arg_0.b), vec3<bool>(global0.x, arg_0.b, var_2.c.x))), false);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 15>();
    var var_0 = u_input.c.yyy;
    var var_1 = func_5(func_1(_wgslsmith_mult_u32(global1.x, global1.x)));
    var_0 = u_input.b;
    let var_2 = global0.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-507f * _wgslsmith_div_f32(1515f, -2679f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(775f, 123f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b);
}

