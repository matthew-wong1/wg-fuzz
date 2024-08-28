struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

var<private> global1: array<i32, 23> = array<i32, 23>(12139i, 7965i, i32(-2147483648), i32(-2147483648), 25205i, -1i, 9745i, 1i, -37972i, 69067i, i32(-2147483648), -1i, 25112i, 39571i, 1i, 1i, 25765i, 0i, -31116i, -1i, 55450i, -5897i, -56198i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    global0 = array<u32, 28>();
    var var_0 = Struct_2(0u, vec3<bool>(select(all(vec3<bool>(true, true, true)), false, any(vec3<bool>(false, true, true)) != (arg_0.x != -2147483647i)), false, !all(vec4<bool>(true, true, true, true))));
    global0 = array<u32, 28>();
    var var_1 = Struct_2(0u, !select(var_0.b, vec3<bool>(true, false, var_0.b.x), select(var_0.b, var_0.b, false)));
    return select(!((var_1.b.x | var_1.b.x) || !var_1.b.x), var_1.b.x, true);
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<bool>(func_3(~(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(1i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28074u, 28u)], 23u)])))), true, true);
    var var_1 = select(vec3<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(973f, 2335f)) > _wgslsmith_f_op_f32(floor(-1054f)), var_0.x), select(!select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, var_0.x, false), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, true, false))), !vec3<bool>(false, var_0.x, true), all(select(!vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, false)))), vec3<bool>(false, var_0.x, any(vec2<bool>(true, var_0.x))));
    let var_2 = Struct_2(~select(47961u, ~(~8524u), false), vec3<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(60087u << (u_input.b % 32u)), 28u)], 23u)] >= global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~8191u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0[_wgslsmith_index_u32(1u, 28u)]), vec2<u32>(global0[_wgslsmith_index_u32(37576u, 28u)], global0[_wgslsmith_index_u32(35653u, 28u)]))), 23u)], false));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-123f, _wgslsmith_f_op_f32(min(-154f, _wgslsmith_f_op_f32(step(-207f, -1000f))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1131f)), 651f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-694f, 1000f, var_1.x)), 2066f, select(var_1.x, var_1.x, var_2.b.x))))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)));
    return Struct_1(reverseBits((-vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 23u)], 2147483647i, 1i) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, -1i, 115029i), vec3<i32>(2147483647i, 0i, global1[_wgslsmith_index_u32(var_2.a, 23u)]))) & -(vec3<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.a, 28u)], 23u)], -6663i, 2147483647i) | vec3<i32>(0i, -2451i, -43912i))), var_0.x);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = var_0.a.xx;
    global0 = array<u32, 28>();
    var var_2 = ~min(vec4<u32>(select(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.b, 28u)], 4294967295u), 1u, true), ~0u, _wgslsmith_add_u32(16832u, u_input.b), _wgslsmith_clamp_u32(27140u, u_input.b & global0[_wgslsmith_index_u32(4294967295u, 28u)], 1u)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(25958u, u_input.b, 4294967295u, 47024u)), vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(84243u, 28u)], 28u)], 28u)], 28u)], 4294967295u, 0u)) | vec4<u32>(~11661u, ~global0[_wgslsmith_index_u32(4294967295u, 28u)], 0u, 17830u));
    var var_3 = func_2();
    return func_2();
}

fn func_1(arg_0: vec4<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_add_u32(19844u, 0u)) << (arg_0.x % 32u), 117764u);
    var var_1 = func_4(func_2());
    var var_2 = Struct_2(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(u_input.b), ~(~62702u)), 28u)], u_input.b, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(53113u, _wgslsmith_add_u32(u_input.b, u_input.b)), arg_0.x, 35567u)), vec3<bool>(!select(func_4(Struct_1(vec3<i32>(u_input.c, -2147483647i, var_1.a.x), var_1.b)).b, true, false), var_1.b, true));
    let var_3 = Struct_2(firstTrailingBit(62614u), var_2.b);
    let var_4 = 4294967295u;
    return vec3<bool>(false, var_1.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(418f)) + -1570f))) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -438f), 792f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 62846u;
    let var_1 = Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(1u, 23u)], ~u_input.c, -firstTrailingBit(global1[_wgslsmith_index_u32(0u, 23u)]) << (115849u % 32u)), any(select(vec3<bool>(true, true, true), func_1(vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43885u, 28u)], 28u)], 0u, 0u)), vec3<bool>(true, true, true))) == any(vec3<bool>(true, true, false)));
    let var_2 = func_2();
    let var_3 = -24004i;
    var var_4 = !func_3(vec2<i32>(firstTrailingBit(firstLeadingBit(-4985i)), _wgslsmith_sub_i32(-18105i, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.a.zx, select(vec4<i32>(-9137i, -1i, var_2.a.x, -30640i), firstTrailingBit(vec4<i32>(global1[_wgslsmith_index_u32(~77562u, 23u)], ~var_2.a.x, ~0i, min(var_3, var_1.a.x))), vec4<bool>(true, true, true, true)), max(~min(min(vec3<u32>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(u_input.b, 28u)], 0u), vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48135u, 28u)], 28u)], 4294967295u)), vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(122114u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)])), vec3<u32>(u_input.b, ~_wgslsmith_clamp_u32(u_input.b, global0[_wgslsmith_index_u32(4294967295u, 28u)], u_input.b), _wgslsmith_sub_u32(~0u, 33543u))));
}

