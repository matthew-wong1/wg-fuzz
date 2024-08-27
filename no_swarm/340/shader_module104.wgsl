struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<f32>,
    c: Struct_4,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
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

var<private> global0: array<i32, 27> = array<i32, 27>(2147483647i, 2147483647i, -7270i, -1i, 2147483647i, 14607i, 49369i, -32634i, 1i, 36744i, 3523i, 2302i, 0i, 25603i, -37598i, -6271i, 1i, -17701i, -1i, 1i, i32(-2147483648), 0i, -19272i, i32(-2147483648), 21321i, 2147483647i, 0i);

var<private> global1: vec2<u32> = vec2<u32>(1u, 13944u);

var<private> global2: array<u32, 26> = array<u32, 26>(13160u, 4294967295u, 0u, 27169u, 29557u, 1u, 46748u, 72781u, 4294967295u, 1u, 93594u, 4469u, 4294967295u, 61705u, 13633u, 27365u, 48949u, 18407u, 12590u, 62627u, 29998u, 15096u, 0u, 19799u, 55299u, 39573u);

var<private> global3: Struct_1 = Struct_1(vec3<bool>(true, true, true), vec3<u32>(0u, 18578u, 0u), false, vec3<u32>(62052u, 26086u, 0u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<bool> {
    var var_0 = firstLeadingBit(_wgslsmith_div_u32(~min(4294967295u, global2[_wgslsmith_index_u32(u_input.a.x, 26u)]), 1u) << (firstTrailingBit(global3.b.x) % 32u));
    var var_1 = _wgslsmith_mult_u32(~u_input.a.x, 1u ^ u_input.b.x);
    var var_2 = ~max(_wgslsmith_mod_vec4_u32(select(_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(34839u, 26242u, 4294967295u, global2[_wgslsmith_index_u32(u_input.a.x, 26u)])), vec4<u32>(global2[_wgslsmith_index_u32(3258u, 26u)], 542u, 0u, 1u), vec4<bool>(false, false, global3.c, false)), u_input.a), firstTrailingBit(u_input.a) | u_input.a);
    let var_3 = Struct_1(global3.a, ~u_input.a.xzw, select(true, all(select(vec2<bool>(true, true), select(global3.a.xz, global3.a.xy, global3.a.x), global3.a.zy)), true), u_input.c << (vec3<u32>(5099u, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global3.b.zy, ~vec2<u32>(global3.d.x, u_input.a.x)), 26u)], ~(~4294967295u)) % vec3<u32>(32u)));
    var var_4 = _wgslsmith_div_f32(-467f, _wgslsmith_f_op_f32(1132f + _wgslsmith_f_op_f32(-503f + 1f)));
    return vec2<bool>(true, all(!(!vec4<bool>(var_3.a.x, global3.a.x, var_3.a.x, false))));
}

fn func_2() -> Struct_3 {
    var var_0 = global3.a.x;
    var_0 = select(!any(!vec4<bool>(global3.a.x, true, false, false)), true, false);
    let var_1 = select(vec2<bool>(global3.c, any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, global3.c, global3.a.x), true), vec4<bool>(global3.a.x, global3.c, global3.c, true), vec4<bool>(true, global3.c, global3.a.x, false)))), global3.a.zx, func_3());
    global0 = array<i32, 27>();
    global2 = array<u32, 26>();
    return Struct_3(vec3<bool>(any(global3.a), all(!vec4<bool>(global3.a.x, global3.c, var_1.x, false)), global3.c && false));
}

fn func_1(arg_0: vec3<bool>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-110f * -1060f);
    var var_1 = func_2();
    var var_2 = ~(-(~_wgslsmith_add_i32(global0[_wgslsmith_index_u32(firstLeadingBit(32284u), 27u)], global0[_wgslsmith_index_u32(~global3.d.x, 27u)])));
    var var_3 = func_2().a.x;
    var var_4 = ~u_input.c.x;
    return Struct_4(vec2<bool>(var_1.a.x || true, true), Struct_1(select(vec3<bool>(true, all(vec4<bool>(global3.c, global3.c, false, global3.c)), arg_0.x), select(func_2().a, !arg_0, all(vec4<bool>(var_1.a.x, global3.a.x, arg_0.x, false))), all(select(var_1.a, global3.a, true))), global3.b, true, abs(vec3<u32>(global1.x, 19021u, global3.d.x)) >> (min(u_input.a.yzw, ~vec3<u32>(4294967295u, 20941u, 4688u)) % vec3<u32>(32u))), Struct_3(!(!vec3<bool>(true, true, global3.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<bool>(any(vec2<bool>(global3.c, any(global3.a))), true, false));
    let var_1 = func_2();
    var var_2 = func_1(vec3<bool>(all(vec3<bool>(any(vec4<bool>(true, false, true, true)), select(true, false, false), func_3().x)), true, true));
    var var_3 = Struct_2(vec4<f32>(-1188f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1474f * 503f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-124f)) - 423f)), -984f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1441f))))), global3.d.x, u_input.a.x, func_1(func_1(select(vec3<bool>(true, var_2.b.a.x, var_1.a.x), !var_1.a, var_2.c.a.x)).b.a).b, countOneBits(countOneBits(global0[_wgslsmith_index_u32(~global1.x, 27u)])));
    var var_4 = _wgslsmith_f_op_f32(213f + 309f);
    let var_5 = max(_wgslsmith_mod_vec4_i32(select(firstLeadingBit(vec4<i32>(0i, -1i, 2147483647i, global0[_wgslsmith_index_u32(var_3.d.d.x, 27u)])) ^ vec4<i32>(18747i, var_3.e, var_3.e, global0[_wgslsmith_index_u32(var_0.b.d.x, 27u)]), _wgslsmith_mult_vec4_i32(-vec4<i32>(global0[_wgslsmith_index_u32(10746u, 27u)], -10048i, -15170i, 1i), ~vec4<i32>(4426i, 25134i, 0i, global0[_wgslsmith_index_u32(0u, 27u)])), any(!vec4<bool>(global3.c, false, false, false))), ~firstLeadingBit(firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(3550u, 27u)], -56511i, global0[_wgslsmith_index_u32(47084u, 27u)], 19895i)))), countOneBits(_wgslsmith_clamp_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(var_3.e, global0[_wgslsmith_index_u32(21065u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(global1.x, 27u)]), vec4<i32>(21434i, global0[_wgslsmith_index_u32(global3.d.x, 27u)], var_3.e, var_3.e))), select(firstTrailingBit(vec4<i32>(var_3.e, 8235i, global0[_wgslsmith_index_u32(var_3.d.b.x, 27u)], -865i)), ~vec4<i32>(var_3.e, -2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 27u)], var_3.e), vec4<bool>(global3.c, true, var_2.a.x, false)), vec4<i32>(-var_3.e, 0i, firstLeadingBit(27565i), _wgslsmith_mult_i32(var_3.e, global0[_wgslsmith_index_u32(33159u, 27u)])))));
    var var_6 = -_wgslsmith_dot_vec3_i32(var_5.yxx, countOneBits(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(39760u, 27u)], var_5.x, var_5.x), var_5.xxx))));
    let var_7 = max(2147483647i, var_5.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-17622i, -_wgslsmith_dot_vec2_i32(var_5.xw, -var_5.zx)));
}

