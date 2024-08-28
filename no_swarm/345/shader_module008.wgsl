struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(4294967295u, 0u, 28536u, 4294967295u, 83446u, 4294967295u, 14776u, 0u, 23096u, 4294967295u, 0u, 1u, 4294967295u);

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, false, true, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = Struct_1(!vec4<bool>((1i ^ u_input.c) <= ~u_input.c, global1.a.x, global1.a.x, all(select(global1.a, global1.a, global1.a.x))));
    var_0 = Struct_1(!select(!vec4<bool>(global1.a.x, global1.a.x, true, var_0.a.x), select(!global1.a, global1.a, global1.a), all(select(global1.a.xwx, var_0.a.zyz, vec3<bool>(true, true, true)))));
    global1 = Struct_1(!(!vec4<bool>(!var_0.a.x, true, var_0.a.x, true)));
    var var_1 = Struct_1(!select(var_0.a, !select(vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), vec4<bool>(global1.a.x, var_0.a.x, var_0.a.x, global1.a.x), vec4<bool>(global1.a.x, global1.a.x, var_0.a.x, false)), !var_0.a.x));
    var var_2 = _wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.d.x, ~(-1i), u_input.c, u_input.c) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(arg_0, 13u)]), vec4<u32>(4294967295u, 0u, u_input.b, u_input.e.x)) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(889i, 3195i, -28665i), vec3<i32>(u_input.c, -1i, u_input.d.x)), -u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c, u_input.d.x), vec3<i32>(8109i, 49154i, 30723i)), min(u_input.d.x, u_input.d.x)) | vec4<i32>(~u_input.c, firstTrailingBit(u_input.c), 2147483647i, ~(-30424i)), vec4<i32>(1i, u_input.d.x, 1808i, select(-u_input.c, -55972i, false))));
    return !(global1.a.x && (_wgslsmith_clamp_i32(var_2.x, var_2.x, var_2.x) > u_input.d.x)) & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2141f))) <= _wgslsmith_f_op_f32(round(-599f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> Struct_2 {
    let var_0 = Struct_1(select(vec4<bool>(func_3(arg_1), _wgslsmith_add_u32(51197u, 1u) > _wgslsmith_dot_vec3_u32(u_input.e, u_input.e), !global1.a.x && global1.a.x, true), select(select(select(global1.a, vec4<bool>(false, global1.a.x, true, global1.a.x), global1.a.x), select(global1.a, vec4<bool>(global1.a.x, global1.a.x, false, global1.a.x), vec4<bool>(true, false, global1.a.x, true)), global1.a), global1.a, global1.a.x), (~global0[_wgslsmith_index_u32(u_input.e.x, 13u)] << (7233u % 32u)) == 4294967295u));
    var var_1 = -(~vec3<i32>(2561i, u_input.d.x, u_input.d.x >> (0u % 32u)) >> (vec3<u32>(firstTrailingBit(min(4294967295u, u_input.b)), abs(~u_input.b), 4294967295u | u_input.a.x) % vec3<u32>(32u)));
    var var_2 = select(max(~(-firstLeadingBit(vec3<i32>(-10988i, u_input.c, var_1.x))), select(~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.x, -2147483647i, -9995i), vec3<i32>(arg_0.x, 2147483647i, arg_0.x)), firstLeadingBit(firstTrailingBit(vec3<i32>(arg_0.x, -327i, -53870i))), select(!vec3<bool>(var_0.a.x, global1.a.x, var_0.a.x), vec3<bool>(global1.a.x, var_0.a.x, global1.a.x), !global1.a.yzw))), vec3<i32>(_wgslsmith_dot_vec2_i32(-arg_0, ~_wgslsmith_sub_vec2_i32(u_input.d, vec2<i32>(u_input.c, 2147483647i))), u_input.d.x, arg_0.x), !select(!vec3<bool>(var_0.a.x, global1.a.x, false), select(var_0.a.yzw, var_0.a.xyy, all(var_0.a)), all(global1.a.xz)));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-912f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(333f - 743f))) - 1491f), _wgslsmith_div_f32(-561f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(520f)))))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(205f)))), -367f))));
    let var_4 = global1.a;
    return Struct_2(var_0);
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_3 {
    global0 = array<u32, 13>();
    let var_0 = arg_3.a.a;
    let var_1 = Struct_2(Struct_1(arg_2));
    var var_2 = 1231f;
    global0 = array<u32, 13>();
    return Struct_3(u_input.e, vec2<f32>(_wgslsmith_f_op_f32(abs(-727f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-154f - _wgslsmith_f_op_f32(f32(-1f) * -646f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1644f, -651f, 2374f))))), 161f, func_2(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2205i, u_input.c, u_input.d.x), firstLeadingBit(vec3<i32>(-19350i, 2147483647i, u_input.d.x))), select(u_input.c, 9054i, true)), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(24360u, 13u)], ~(~arg_1))));
}

fn func_1() -> bool {
    let var_0 = func_4(u_input.a.x | 65916u, ~(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(70571u, 13u)], 13u)]) ^ global0[_wgslsmith_index_u32(~u_input.e.x, 13u)]), select(select(global1.a, !(!vec4<bool>(global1.a.x, global1.a.x, false, true)), vec4<bool>(global1.a.x, true, true, global0[_wgslsmith_index_u32(0u, 13u)] >= global0[_wgslsmith_index_u32(4294967295u, 13u)])), !vec4<bool>(global1.a.x, any(vec3<bool>(global1.a.x, true, true)), all(global1.a.xzy), !global1.a.x), true), func_2(u_input.d, 45086u));
    global0 = array<u32, 13>();
    var var_1 = func_4(~(~_wgslsmith_sub_u32(reverseBits(1u), ~4294967295u)), func_4(_wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.a.x, u_input.e.x), 36258u), ~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)] >> (global0[_wgslsmith_index_u32(8347u, 13u)] % 32u)), vec4<bool>(true, all(global1.a), global1.a.x, false), var_0.e).a.x >> (~global0[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(u_input.b)), 13u)] % 32u), vec4<bool>(var_0.e.a.a.x, false, true, !(all(global1.a) || select(var_0.e.a.a.x, false, var_0.e.a.a.x))), func_2(u_input.d, _wgslsmith_clamp_u32(max(global0[_wgslsmith_index_u32(u_input.e.x, 13u)], var_0.a.x) >> (_wgslsmith_clamp_u32(var_0.a.x, 4294967295u, 4294967295u) % 32u), ~95337u, u_input.a.x))).e;
    global1 = var_0.e.a;
    let var_2 = global0[_wgslsmith_index_u32(~2068u, 13u)];
    return var_1.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(select(vec4<bool>(true, global1.a.x, func_1(), global1.a.x), vec4<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(24201i, -1i, 1i, 1i), vec4<i32>(-1i, u_input.d.x, 2147483647i, 0i)) == 2279i, true, !(global1.a.x | global1.a.x), true), global1.a.x));
    var var_0 = ~(~(~(~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], 13u)], 13u)], 13u)], u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], 13u)]))));
    var var_1 = Struct_1(select(!select(global1.a, select(vec4<bool>(false, true, false, global1.a.x), global1.a, global1.a.x), global1.a.x & true), !vec4<bool>(true, global1.a.x, global1.a.x, global1.a.x), any(!global1.a.zzz)));
    let var_2 = select((vec3<i32>(u_input.d.x, -2147483647i, -48999i) << (u_input.e % vec3<u32>(32u))) | max(vec3<i32>(u_input.d.x, u_input.c, -2147483647i), vec3<i32>(u_input.c, -1i, u_input.d.x) ^ vec3<i32>(u_input.c, -6109i, u_input.d.x)), max(~vec3<i32>(-2147483647i, u_input.d.x, u_input.d.x), firstLeadingBit(vec3<i32>(2147483647i, 1i, u_input.d.x))) ^ -countOneBits(vec3<i32>(40177i, 5879i, u_input.c)), !var_1.a.wzz) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(51051u, u_input.e.x, 22946u, 42575u)), reverseBits(~vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 13u)], global0[_wgslsmith_index_u32(var_0.x, 13u)], u_input.b))), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], select(10283u, _wgslsmith_div_u32(1u, var_0.x << (0u % 32u)), !(!var_1.a.x))) % vec3<u32>(32u));
    global1 = func_4(~((~var_0.x & (global0[_wgslsmith_index_u32(7190u, 13u)] << (4294967295u % 32u))) & var_0.x), ~u_input.a.x, !func_2(vec2<i32>(u_input.d.x, 0i), 45698u).a.a, func_4(_wgslsmith_sub_u32(var_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 13u)], 13u)]), ~func_4(u_input.a.x, 53644u, func_2(vec2<i32>(-32217i, -2147483647i), 8077u).a.a, Struct_2(Struct_1(vec4<bool>(true, var_1.a.x, global1.a.x, var_1.a.x)))).a.x, vec4<bool>(!func_2(var_2.zz, var_0.x).a.a.x, true, true, var_1.a.x), Struct_2(func_4(_wgslsmith_add_u32(0u, var_0.x), 4294967295u, select(vec4<bool>(false, var_1.a.x, global1.a.x, true), var_1.a, true), Struct_2(Struct_1(var_1.a))).e.a)).e).e.a;
    var var_3 = Struct_1(global1.a);
    var_0 = firstLeadingBit(~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(var_0.x, 13u)], var_0.x, 8470u, 21332u), vec4<u32>(u_input.b, 0u, var_0.x, 28598u)))));
    let var_4 = var_3.a.wxz;
    global0 = array<u32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec2_i32(-reverseBits(vec2<i32>(4025i, 44344i)), var_2.xx), -u_input.c, 43865i | u_input.c, u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1160f, 430f) + vec2<f32>(528f, -2985f)))))), ~(~countOneBits(-u_input.c)));
}

