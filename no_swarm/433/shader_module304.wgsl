struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<f32>(-373f, 1339f, -768f), false), Struct_1(vec3<f32>(-806f, 328f, 335f), false));

var<private> global1: array<vec3<bool>, 31>;

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

var<private> global3: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(13848u, 0u), vec2<u32>(35954u, 1u), vec2<u32>(15926u, 47244u), vec2<u32>(95033u, 1652u), vec2<u32>(61157u, 4294967295u), vec2<u32>(21060u, 95293u), vec2<u32>(93875u, 4294967295u), vec2<u32>(4294967295u, 28235u), vec2<u32>(4294967295u, 35634u), vec2<u32>(20128u, 2114u), vec2<u32>(1u, 607u), vec2<u32>(1u, 4388u), vec2<u32>(25679u, 22224u), vec2<u32>(31124u, 30577u), vec2<u32>(36661u, 97627u), vec2<u32>(72255u, 0u), vec2<u32>(81681u, 84598u), vec2<u32>(46192u, 77481u), vec2<u32>(34292u, 1u), vec2<u32>(0u, 33920u), vec2<u32>(4294967295u, 98343u), vec2<u32>(1u, 1u), vec2<u32>(96215u, 92604u), vec2<u32>(4294967295u, 1u));

var<private> global4: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    let var_0 = 15442u;
    return !(!select(select(vec4<bool>(false, global4.x, global2.x, false), select(vec4<bool>(false, global4.x, false, global2.x), vec4<bool>(false, global2.x, false, global2.x), global2.x), global2.x), !select(vec4<bool>(true, global4.x, true, true), vec4<bool>(global2.x, global4.x, global2.x, global2.x), true), !(!vec4<bool>(true, false, false, global2.x))));
}

fn func_2(arg_0: Struct_1) -> u32 {
    global2 = !global1[_wgslsmith_index_u32(1u, 31u)];
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(~(~4294967295u), 24u)], vec2<u32>(0u, ~29914u)), 25930u) & firstTrailingBit(~1u), 2u)];
    var var_1 = arg_0;
    let var_2 = select(select(!vec4<bool>(false | global2.x, true, global4.x, true), select(vec4<bool>(select(global2.x, global4.x, true), arg_0.b, arg_0.b, true), select(!vec4<bool>(false, var_0.b, true, true), !vec4<bool>(global4.x, var_0.b, true, false), !vec4<bool>(arg_0.b, true, false, global2.x)), func_3()), vec4<bool>(global2.x, false, var_1.b, false)), !select(vec4<bool>(true, any(vec4<bool>(false, global4.x, arg_0.b, false)), global4.x, true), vec4<bool>(false || arg_0.b, !global4.x, var_0.b, 646f > arg_0.a.x), true), (!var_1.b || all(!vec4<bool>(var_1.b, true, true, true))) & true);
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(51304u), _wgslsmith_mod_u32(4294967295u, select(4294967295u, ~4294967295u, var_2.x))), 2u)];
    return min(~(~(~countOneBits(12523u))), ~(~4294967295u));
}

fn func_1() -> Struct_1 {
    global4 = select(global1[_wgslsmith_index_u32(func_2(global0[_wgslsmith_index_u32(67814u, 2u)]), 31u)], func_3().zxz, true);
    let var_0 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(1u, ~36625u), 4294967295u, 4294967295u), min(vec3<u32>(76940u, 1u, 39661u >> (0u % 32u)), firstTrailingBit(vec3<u32>(24861u, 1u, 1u))), _wgslsmith_add_vec3_u32(~(~vec3<u32>(11970u, 4294967295u, 13944u)), select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(37398u, 17948u, 1u), true)));
    let var_1 = select(func_3().xy, global2.zx, global4.yx);
    let var_2 = !vec2<bool>(var_1.x, true);
    let var_3 = -1000f;
    return global0[_wgslsmith_index_u32(4294967295u, 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = array<vec3<bool>, 31>();
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -2147483647i, u_input.c.x | min(~0i, u_input.b.x ^ u_input.c.x)), u_input.b.zxx);
    var var_2 = abs(vec4<i32>(reverseBits(-57440i), ~abs(2147483647i), -firstLeadingBit(u_input.b.x), reverseBits(_wgslsmith_add_i32(abs(var_1.x), ~var_1.x))));
    global0 = array<Struct_1, 2>();
    global3 = array<vec2<u32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(var_2.x >> (63264u % 32u), var_2.x ^ -23405i, _wgslsmith_mod_i32(-2147483647i, u_input.b.x), var_2.x)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), var_0.a.x, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x), var_0.a.x)), var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x)))));
}

