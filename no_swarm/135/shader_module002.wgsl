struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: bool;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: bool) -> u32 {
    let var_0 = 0i;
    var var_1 = arg_0.c;
    var var_2 = arg_0;
    return _wgslsmith_mult_u32(~_wgslsmith_mod_u32(50053u, var_1.x), ~(~max(abs(arg_0.c.x), var_1.x)));
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~1u), 16u)]) < 192f, select(_wgslsmith_div_vec2_u32(vec2<u32>(func_3(Struct_5(false, vec2<u32>(46511u, 1u), vec4<u32>(1u, 4294967295u, 61563u, 0u)), false, false), select(13645u, 1u, false)), vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u), all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false)))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, ~0u, ~4294967295u, abs(137471u)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 23740u, 60949u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 0u), vec4<u32>(4294967295u, 35791u, 1u, 4294967295u)), firstTrailingBit(vec4<u32>(0u, 0u, 68983u, 8290u)))));
    global1 = !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1000f)), 1131f)) < 974f) | var_0.a;
    var var_1 = var_0.b;
    let var_2 = var_0.b.x;
    var var_3 = countOneBits(u_input.a.yyz);
    return vec2<bool>(false, var_0.a);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> bool {
    let var_0 = select(func_2(), !(!select(arg_1.a.zx, !arg_1.a.ww, !arg_1.a.x)), select(arg_1.d.zz, vec2<bool>(true, true), any(arg_1.d.zxy)));
    var var_1 = 6421u;
    var var_2 = arg_1.b;
    var_2 = arg_1.b;
    var var_3 = 465f;
    return !(!var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), all(vec2<bool>(false, true))), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(func_1(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true), Struct_2(vec4<bool>(true, false, true, false), Struct_1(u_input.a.xy), vec3<f32>(global0[_wgslsmith_index_u32(31304u, 16u)], global0[_wgslsmith_index_u32(95534u, 16u)], 473f), vec4<bool>(true, true, false, true), 1u)), true), !any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))), Struct_2(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true)), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, any(vec2<bool>(true, false)), true, all(vec2<bool>(true, true)))), Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(49157i, u_input.a.x), vec2<i32>(1i, 7219i), u_input.a.yz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(58401u, 16u)], -654f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1000f, global0[_wgslsmith_index_u32(12149u, 16u)]) + vec3<f32>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)])))), !vec4<bool>(true, all(vec2<bool>(true, false)), any(vec3<bool>(true, true, true)), -1161f <= global0[_wgslsmith_index_u32(1u, 16u)]), ~(~(~0u))));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(70228u, var_0.b.e & var_0.b.e), 16u)] - -345f), var_0.b.c.x)), 1000f));
    var var_2 = _wgslsmith_clamp_vec2_i32(select(min(_wgslsmith_mult_vec2_i32(~vec2<i32>(23474i, u_input.a.x), select(vec2<i32>(var_0.b.b.a.x, 17911i), vec2<i32>(28866i, var_0.b.b.a.x), var_0.b.a.zx)), vec2<i32>(-u_input.a.x, firstLeadingBit(var_0.b.b.a.x))), countOneBits(select(vec2<i32>(u_input.a.x, var_0.b.b.a.x) >> (vec2<u32>(77224u, var_0.b.e) % vec2<u32>(32u)), vec2<i32>(1i, var_0.b.b.a.x), true)), ((var_0.b.e >> (var_0.b.e % 32u)) < ~21429u) && (!var_0.b.a.x || !var_0.a.x)), abs(select(~countOneBits(vec2<i32>(0i, var_0.b.b.a.x)), var_0.b.b.a << (~vec2<u32>(40063u, 4294967295u) % vec2<u32>(32u)), vec2<bool>(true, true | var_0.b.a.x))), select(-vec2<i32>(var_0.b.b.a.x, 13483i), ~_wgslsmith_clamp_vec2_i32(u_input.a.wz, countOneBits(vec2<i32>(u_input.a.x, 0i)), _wgslsmith_add_vec2_i32(var_0.b.b.a, u_input.a.zy)), func_2().x));
    let var_3 = vec3<i32>(-1i) * -u_input.a.xxz;
    let var_4 = any(func_2());
    global1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b.e << (var_0.b.e % 32u), 0u), ~select(vec2<u32>(var_0.b.e, 68982u), vec2<u32>(var_0.b.e, var_0.b.e), false)) >> (vec2<u32>(var_0.b.e, select(57537u, var_0.b.e, false && var_0.a.x)) % vec2<u32>(32u)));
}

