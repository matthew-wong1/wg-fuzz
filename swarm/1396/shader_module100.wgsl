struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
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

var<private> global0: array<Struct_1, 20>;

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(1u, 48604u), false, vec2<i32>(-18661i, -1i), vec3<i32>(-48351i, -27392i, 37665i));

var<private> global3: array<bool, 9> = array<bool, 9>(false, true, true, true, false, false, true, true, true);

var<private> global4: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(-13869i, 0i, 2147483647i, 2147483647i), vec4<i32>(2147483647i, 0i, -4361i, -6986i), vec4<i32>(-11493i, -5891i, -34775i, -21611i), vec4<i32>(14932i, 57938i, -40431i, -45182i), vec4<i32>(1069i, -76881i, -1i, -29276i), vec4<i32>(9321i, 0i, 13385i, -15192i), vec4<i32>(0i, 0i, i32(-2147483648), 36713i), vec4<i32>(-17599i, 1i, 1i, -18116i), vec4<i32>(28739i, 1i, 10392i, 0i), vec4<i32>(47872i, 0i, 8659i, 16894i), vec4<i32>(0i, 23099i, 0i, -59041i), vec4<i32>(i32(-2147483648), 31840i, 8668i, 1i), vec4<i32>(0i, 1i, 2147483647i, 1i), vec4<i32>(0i, -15109i, 25736i, 1i), vec4<i32>(i32(-2147483648), 0i, 0i, 6590i), vec4<i32>(-1804i, 19135i, 35196i, 6841i), vec4<i32>(11253i, -1i, 0i, 0i), vec4<i32>(1i, 36837i, 69988i, i32(-2147483648)), vec4<i32>(15073i, 1i, i32(-2147483648), 0i), vec4<i32>(-33964i, -32358i, -43591i, 2147483647i), vec4<i32>(1i, 0i, -16148i, 18875i), vec4<i32>(1i, -4113i, 2147483647i, -8619i), vec4<i32>(5200i, 4912i, -23064i, 32758i), vec4<i32>(-23449i, -1i, i32(-2147483648), 2147483647i), vec4<i32>(i32(-2147483648), 16494i, -1i, 2147483647i), vec4<i32>(14982i, 0i, i32(-2147483648), -33572i), vec4<i32>(-1i, i32(-2147483648), 0i, 2147483647i), vec4<i32>(-1i, 36669i, 29774i, -50177i), vec4<i32>(26454i, 41461i, i32(-2147483648), -71708i), vec4<i32>(-24295i, 38312i, -35577i, 9596i), vec4<i32>(2147483647i, 2147483647i, 43789i, -5197i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 34160i));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = -2128f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(892f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-442f, -2567f)), 1057f)))));
    var var_1 = arg_3;
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-2159f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-391f, _wgslsmith_div_f32(727f, -681f)) - -1340f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1000f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(max(399f, 654f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2285f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1674f, 2320f, 715f, -672f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-434f, -929f, -403f, -1228f), vec4<f32>(486f, 760f, -839f, -1570f), vec4<bool>(false, false, arg_3.b, arg_3.b))), all(vec3<bool>(true, true, false)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-592f, 157f, -423f, 365f)))))));
    var var_3 = abs(vec4<u32>(1u, ~arg_0.a.x, 83593u, _wgslsmith_dot_vec4_u32(vec4<u32>(25175u, var_1.a.x, arg_0.a.x, global2.a.x), vec4<u32>(4294967295u, 0u, arg_2.a.x, global2.a.x))) >> (vec4<u32>(0u, ~arg_3.a.x, ~1u, _wgslsmith_sub_u32(1u, arg_3.a.x)) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_0.a.x, arg_3.a.x, global2.a.x)), abs(~vec3<u32>(var_1.a.x, var_1.a.x, 4294967295u))), (121478u << (0u % 32u)) | global2.a.x, _wgslsmith_mult_u32(~(~33170u), ~_wgslsmith_dot_vec2_u32(arg_3.a, global2.a)), var_1.a.x | arg_3.a.x) % vec4<u32>(32u));
    let var_4 = 614f;
    return var_4;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 1u, 23849u), 20u)];
    var var_1 = u_input.c.zxx;
    let var_2 = Struct_1(vec2<u32>(4294967295u, reverseBits(countOneBits(0u >> (global2.a.x % 32u)))), true, ~u_input.c.xy, _wgslsmith_mult_vec3_i32(vec3<i32>(firstLeadingBit(var_1.x), ~35241i, -26505i), _wgslsmith_sub_vec3_i32(firstLeadingBit(var_0.d), -u_input.c.zww)) << (select((vec3<u32>(2599u, global2.a.x, arg_0.a.x) & vec3<u32>(40461u, 38199u, var_0.a.x)) & _wgslsmith_div_vec3_u32(vec3<u32>(var_0.a.x, global2.a.x, arg_0.a.x), vec3<u32>(74018u, 1u, 0u)), ~(~vec3<u32>(global2.a.x, 1u, 1u)), true) % vec3<u32>(32u)));
    let var_3 = Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(var_0.a, var_2.b, vec2<i32>(2147483647i, global2.d.x), var_2.d), 35429i, global0[_wgslsmith_index_u32(arg_0.a.x, 20u)], var_2))) * _wgslsmith_f_op_f32(1321f - _wgslsmith_f_op_f32(sign(1370f)))) < 1f, countOneBits(-vec2<i32>(1i, 1i)), max(~u_input.c.wyx, min(countOneBits(vec3<i32>(var_1.x, var_2.c.x, u_input.c.x)), firstTrailingBit(var_0.d)) >> (firstTrailingBit(countOneBits(vec3<u32>(1u, arg_0.a.x, 0u))) % vec3<u32>(32u))));
    var var_4 = ~arg_0.a;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> i32 {
    var var_0 = arg_0.a.x;
    let var_1 = arg_0;
    return -28317i;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(vec2<u32>(global2.a.x, 28927u), global2.b, vec2<i32>(~_wgslsmith_add_i32(i32(-1i) * -1i, u_input.a), global2.c.x), -(~abs(vec3<i32>(-1i, arg_0.x, arg_0.x))));
    var var_1 = -_wgslsmith_mod_vec2_i32(arg_0, u_input.c.xy);
    let var_2 = _wgslsmith_clamp_i32(-1i, -1i, _wgslsmith_mult_i32(2147483647i, max(func_4(func_2(global0[_wgslsmith_index_u32(var_0.a.x, 20u)]), _wgslsmith_f_op_f32(select(-400f, -162f, global2.b))), -(var_1.x >> (1u % 32u)))));
    let var_3 = firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(~var_0.a.x, countOneBits(67550u), min(global2.a.x, global2.a.x) ^ countOneBits(1u)), vec3<u32>(~1u, ~43808u, 1u) & firstTrailingBit(~vec3<u32>(41284u, 0u, 117988u))));
    var_1 = max(vec2<i32>(var_0.c.x, _wgslsmith_clamp_i32(-var_1.x, ~(-3151i), var_2) << (var_0.a.x % 32u)), arg_0);
    return global0[_wgslsmith_index_u32(global2.a.x, 20u)];
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> StorageBuffer {
    global1 = _wgslsmith_add_u32(arg_0.a.x, countOneBits(global2.a.x));
    var var_0 = min(vec2<i32>(-1i) * -(~countOneBits(global2.d.yx)), vec2<i32>(_wgslsmith_sub_i32(-69879i, arg_0.c.x), global2.d.x) << (select(global2.a, ~arg_0.a ^ func_2(Struct_1(vec2<u32>(1u, global2.a.x), true, vec2<i32>(arg_0.c.x, arg_0.c.x), arg_0.d)).a, false) % vec2<u32>(32u)));
    global3 = array<bool, 9>();
    var var_1 = func_2(func_2(Struct_1(vec2<u32>(abs(global2.a.x), 31465u), 31548i < _wgslsmith_dot_vec3_i32(vec3<i32>(global2.c.x, var_0.x, -46327i), arg_0.d), _wgslsmith_mod_vec2_i32(vec2<i32>(-15696i, 4821i), _wgslsmith_div_vec2_i32(global2.c, vec2<i32>(2147483647i, u_input.b))), _wgslsmith_mod_vec3_i32(global2.d, vec3<i32>(u_input.b, u_input.c.x, 2147483647i)))));
    let var_2 = abs(global2.d.x);
    return StorageBuffer(1f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(abs(select(abs(29902u), _wgslsmith_div_u32(1u, 1u), all(select(vec3<bool>(global3[_wgslsmith_index_u32(16267u, 9u)], false, global3[_wgslsmith_index_u32(global2.a.x, 9u)]), vec3<bool>(false, true, false), vec3<bool>(true, true, false))))), _wgslsmith_sub_u32(~(~global2.a.x), 1u), !global3[_wgslsmith_index_u32(global2.a.x, 9u)]);
    let x = u_input.a;
    s_output = func_5(func_1(vec2<i32>(global2.d.x, ~(-14723i) << (var_0 % 32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1597f + -355f) + _wgslsmith_f_op_f32(2089f + -1000f))), -457f));
}

