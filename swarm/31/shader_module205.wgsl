struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec2<u32> = vec2<u32>(0u, 2365u);

var<private> global2: array<Struct_1, 9>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = ~(i32(-1i) * -1i);
    var var_1 = _wgslsmith_add_vec2_u32(global0.xy, global0.xw);
    var var_2 = global0.yyy;
    let var_3 = Struct_1(44389i);
    let var_4 = Struct_1(-24563i);
    return 44993i;
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> bool {
    global0 = ~(~_wgslsmith_div_vec4_u32(vec4<u32>(~global0.x, firstLeadingBit(4294967295u), 86469u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 16846u, 1u), vec3<u32>(global1.x, 1u, arg_1))), _wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, 45079u, 318u), vec4<u32>(global1.x, 5734u, 34548u, 4294967295u))));
    global0 = ~abs(vec4<u32>(~23207u, global1.x, global1.x, countOneBits(36538u | global0.x)));
    var var_0 = arg_0;
    global2 = array<Struct_1, 9>();
    let var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(~max(global1.x, abs(arg_1)), 43207u, ~abs(47010u), _wgslsmith_mod_u32(60618u, _wgslsmith_div_u32(33794u, 1u))), ~(~reverseBits(abs(vec4<u32>(31356u, global0.x, 4294967295u, global1.x)))));
    return !(!any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false)) && true);
}

fn func_1() -> vec4<u32> {
    var var_0 = Struct_1(-min(u_input.b, func_2(global2[_wgslsmith_index_u32(~4411u, 9u)], global2[_wgslsmith_index_u32(select(global0.x, global1.x, false), 9u)], global2[_wgslsmith_index_u32(30247u, 9u)])));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1008f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1053f, -343f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1000f))))), all(select(vec4<bool>(true, false, all(vec3<bool>(false, true, true)), true), vec4<bool>(true, u_input.a != 6518i, u_input.a != u_input.b, true), func_3(global2[_wgslsmith_index_u32(~global1.x, 9u)], _wgslsmith_mult_u32(global1.x, 0u))))));
    let var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(select(1u, 0u, func_3(global2[_wgslsmith_index_u32(min(global1.x, global1.x), 9u)], global0.x)), 1u), 9u)];
    var var_3 = global2[_wgslsmith_index_u32(1u, 9u)];
    global2 = array<Struct_1, 9>();
    return vec4<u32>(select(_wgslsmith_mult_u32(abs(0u), global0.x), ~0u << (global0.x % 32u), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), _wgslsmith_div_u32(firstTrailingBit(38850u), abs(41266u)), ~min(~1u, abs(65687u)), (~(global1.x | 4656u) | 4294967295u) >> ((1u & global1.x) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~countOneBits(~(-vec3<i32>(u_input.a, u_input.a, 18136i))));
    global0 = _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(max(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, 52897u, global0.x, global1.x) << (vec4<u32>(global1.x, global1.x, global1.x, 0u) % vec4<u32>(32u)), vec4<u32>(1u, global1.x, 0u, 8672u)), ~(vec4<u32>(global0.x, 41425u, 0u, 0u) << (vec4<u32>(2071u, global0.x, 0u, global0.x) % vec4<u32>(32u)))), reverseBits(vec4<u32>(33894u, global1.x, global1.x, 29106u)) | _wgslsmith_add_vec4_u32(~vec4<u32>(global1.x, 1u, 1u, 4294967295u), vec4<u32>(global1.x, 1u, 1u, 64979u) ^ vec4<u32>(1u, 0u, 0u, 4294967295u))), ~(func_1() >> (reverseBits(~vec4<u32>(1u, global0.x, 1u, global0.x)) % vec4<u32>(32u))));
    var var_1 = select(any(vec4<bool>(all(vec2<bool>(true, false)) != false, all(vec2<bool>(true, true)), true, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(1318f, 2620f))) >= _wgslsmith_f_op_f32(1511f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1683f, -1215f))), true);
    var var_2 = global2[_wgslsmith_index_u32(global1.x, 9u)];
    var var_3 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(min(reverseBits(37108i), (-2147483647i << (global0.x % 32u)) << (95776u % 32u)), var_2.a, _wgslsmith_sub_i32(-select(u_input.a, var_0.x, true), select(var_0.x, _wgslsmith_sub_i32(21895i, -1i), true))));
}

