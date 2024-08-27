struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: i32;

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

var<private> global3: array<u32, 32> = array<u32, 32>(15967u, 91290u, 2208u, 12293u, 55252u, 1u, 13874u, 27128u, 4294967295u, 4294967295u, 60155u, 13799u, 1u, 0u, 1u, 70500u, 1u, 3401u, 29930u, 4294967295u, 111380u, 0u, 4294967295u, 89015u, 0u, 16076u, 45805u, 0u, 3027u, 5676u, 25490u, 1u);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = array<Struct_1, 24>();
    return global3[_wgslsmith_index_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(32170u, 50528u, u_input.a, 13634u), _wgslsmith_add_vec4_u32(vec4<u32>(19748u, u_input.a, 4294967295u, 2665u), vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(34436u, 32u)], global3[_wgslsmith_index_u32(0u, 32u)], 38015u))) & (~global3[_wgslsmith_index_u32(u_input.a, 32u)] | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(select(15215u, global3[_wgslsmith_index_u32(u_input.a, 32u)], false), 32u)], 32u)], 32u)])) >> (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(37574u, 38692u, 23632u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 42717u, global3[_wgslsmith_index_u32(0u, 32u)]), vec3<u32>(global3[_wgslsmith_index_u32(0u, 32u)], 4625u, 0u))) << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.a, 72811u)) % 32u)) % 32u), 32u)];
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(~arg_2, 0u), min(~u_input.a >> (_wgslsmith_div_u32(~arg_2, u_input.a) % 32u), 113693u), max(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2, ~global3[_wgslsmith_index_u32(countOneBits(11546u), 32u)]), 32u)], global3[_wgslsmith_index_u32(34571u, 32u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(func_3(select(global2.zx, global2.yx, global2.xy), 33540i, Struct_1(vec3<f32>(arg_1.a.x, arg_1.a.x, -695f)), Struct_1(arg_1.a)), global3[_wgslsmith_index_u32(16033u, 32u)]), vec2<u32>(_wgslsmith_clamp_u32(4294967295u, ~89692u, 12138u), func_3(global2.xx, arg_0, global0[_wgslsmith_index_u32(23922u, 24u)], Struct_1(vec3<f32>(arg_1.a.x, arg_1.a.x, -770f))) >> (u_input.a % 32u))));
    let var_1 = vec2<f32>(arg_1.a.x, arg_1.a.x);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_1.a))) - vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) + _wgslsmith_f_op_f32(-arg_1.a.x)), -579f)));
    let var_3 = global2.xx;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.a.x)) * -1123f)))));
    return arg_1;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: i32) -> i32 {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -firstLeadingBit(vec2<i32>(arg_3, arg_3)), firstLeadingBit(abs(vec2<i32>(arg_3, arg_3))) ^ abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_3, arg_3), vec2<i32>(-17670i, 1i), vec2<i32>(-26026i, 25771i)))), -1i);
    var var_1 = global2.x;
    var var_2 = ~vec3<u32>(u_input.a, ~(~(~u_input.a)), global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(arg_0 | vec3<u32>(4294967295u, u_input.a, 1295u), arg_0)), 32u)]);
    var var_3 = arg_1.a.x;
    let var_4 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, ~min(select(~1u, 1u, false), abs(109162u))), 24u)];
    return 0i;
}

fn func_1() -> i32 {
    global1 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(~51147i, abs(-38179i), -30957i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), ~vec4<i32>(2074i, _wgslsmith_div_i32(0i, -1i), 1i, _wgslsmith_sub_i32(-20001i, 1i)));
    global3 = array<u32, 32>();
    global2 = vec3<bool>(select(true, any(vec2<bool>(global2.x, all(vec3<bool>(true, global2.x, false)))), !(!all(global2.yy))), true, any(!(!vec3<bool>(true, false, global2.x))));
    var var_0 = global0[_wgslsmith_index_u32(~(~(~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 32u)], 32u)]))), 24u)];
    var_0 = global0[_wgslsmith_index_u32(27189u, 24u)];
    return _wgslsmith_clamp_i32(func_4(vec3<u32>(global3[_wgslsmith_index_u32(0u, 32u)], _wgslsmith_div_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(17676u, u_input.a), 32u)], _wgslsmith_div_u32(u_input.a, u_input.a)), global3[_wgslsmith_index_u32(82547u, 32u)]), func_2(~_wgslsmith_clamp_i32(-2147483647i, -1i, 15667i), Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a)), ~7102u), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -682f, -848f, _wgslsmith_f_op_f32(f32(-1f) * -369f)))), -10528i), ~(~reverseBits(abs(-2147483647i))), _wgslsmith_sub_i32(i32(-1i) * -69138i, firstTrailingBit(1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~4294967295u, ~(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(7344u, 32u)], 4294967295u) << (u_input.a % 32u)) ^ global3[_wgslsmith_index_u32(4294967295u, 32u)]), 32u)], 24u)];
    let var_1 = global0[_wgslsmith_index_u32(~(~(~(~(~9340u)))), 24u)];
    global0 = array<Struct_1, 24>();
    let var_2 = countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-23798i, -2147483647i)), vec2<i32>(19564i, -1i)), _wgslsmith_mod_i32(abs(0i), ~(-23334i)), _wgslsmith_add_i32(select(-2147483647i, 1i, true), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec3<i32>(33691i, -10253i, -494i))))));
    let var_3 = ~vec4<i32>(var_2.x, -10328i, func_1(), 899i);
    let var_4 = select(global2.xy, !vec2<bool>(global2.x, true), vec2<bool>(true, all(!(!vec2<bool>(global2.x, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(_wgslsmith_div_u32(~global3[_wgslsmith_index_u32(3415u, 32u)], global3[_wgslsmith_index_u32(8145u, 32u)]), 1u), -1000f, max(min(vec2<u32>(u_input.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 32u)] ^ 4294967295u, 32u)], 32u)]), ~vec2<u32>(global3[_wgslsmith_index_u32(2173u, 32u)], u_input.a) & vec2<u32>(51443u, 0u)), ~(~vec2<u32>(62436u, 1u) << (_wgslsmith_mod_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(1u, 32u)], 0u), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32715u, 32u)], 32u)], global3[_wgslsmith_index_u32(u_input.a, 32u)])) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-856f - -463f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(724f, 549f))) * 1238f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.a.x)), _wgslsmith_f_op_f32(-1208f - var_1.a.x), _wgslsmith_f_op_f32(-var_1.a.x), -1175f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-596f, var_1.a.x, var_1.a.x, var_0.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(189f, -615f, -600f, var_0.a.x))))));
}

