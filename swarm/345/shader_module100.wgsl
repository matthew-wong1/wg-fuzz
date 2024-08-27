struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<f32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: array<i32, 22> = array<i32, 22>(4557i, 2114i, 2147483647i, 1i, -1i, 51404i, 1i, 1i, 2147483647i, 2147483647i, -15253i, 0i, 2147483647i, 26073i, 0i, 46394i, -1i, -4701i, 59601i, -1i, 1i, -31790i);

var<private> global1: array<Struct_5, 14> = array<Struct_5, 14>(Struct_5(5867i, vec3<u32>(5343u, 43617u, 0u)), Struct_5(2147483647i, vec3<u32>(1u, 16046u, 49012u)), Struct_5(1i, vec3<u32>(29019u, 0u, 1u)), Struct_5(49277i, vec3<u32>(5628u, 1u, 1u)), Struct_5(3900i, vec3<u32>(23886u, 0u, 0u)), Struct_5(-1i, vec3<u32>(36534u, 1u, 64965u)), Struct_5(-46479i, vec3<u32>(1u, 1u, 1u)), Struct_5(1i, vec3<u32>(1u, 87820u, 70531u)), Struct_5(-23205i, vec3<u32>(38053u, 73370u, 0u)), Struct_5(38070i, vec3<u32>(4294967295u, 0u, 48284u)), Struct_5(-12489i, vec3<u32>(1612u, 25928u, 0u)), Struct_5(-16202i, vec3<u32>(75073u, 1u, 1u)), Struct_5(33466i, vec3<u32>(4294967295u, 1u, 21108u)), Struct_5(-17857i, vec3<u32>(1u, 1u, 4294967295u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>) -> vec2<bool> {
    var var_0 = arg_1.x;
    var var_1 = Struct_3(any(vec3<bool>(arg_1.x, arg_1.x | arg_1.x, arg_1.x)) & (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_0.x) != -464f), true | ((any(vec4<bool>(true, true, arg_1.x, arg_1.x)) & true) | arg_1.x), select(max(vec3<i32>(global0[_wgslsmith_index_u32(~9319u, 22u)], 1i, 31097i), ~(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(17652u, 22u)], -58498i) | vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)], -21439i))), abs(~(-vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)], -6017i))), !(arg_0.x != arg_0.x)), ~countOneBits(~(vec2<u32>(5264u, u_input.a.x) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)))));
    var_1 = Struct_3(any(arg_1.www), var_1.b, var_1.c, _wgslsmith_clamp_vec2_u32(vec2<u32>(~var_1.d.x, _wgslsmith_mod_u32(~u_input.a.x, 1u)), firstTrailingBit(vec2<u32>(~u_input.a.x, var_1.d.x)), ~vec2<u32>(~u_input.a.x, ~var_1.d.x)));
    let var_2 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(4294967295u, ~max(u_input.a.x, ~var_1.d.x))), 22u)];
    let var_3 = Struct_4(Struct_2(Struct_1(vec2<u32>(16181u, u_input.a.x)), var_1.a), Struct_1(~select(~var_1.d, vec2<u32>(419u, var_1.d.x), vec2<bool>(true, arg_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, -386f, arg_0.x)))), _wgslsmith_add_vec4_i32(select(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 1i, global0[_wgslsmith_index_u32(var_1.d.x, 22u)], var_1.c.x), vec4<i32>(-1i, var_1.c.x, 1i, 1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 22386i, var_1.c.x, 21458i), vec4<i32>(-39488i, var_1.c.x, -2147483647i, global0[_wgslsmith_index_u32(42560u, 22u)]))), select(vec4<i32>(-5404i, global0[_wgslsmith_index_u32(u_input.a.x, 22u)], var_1.c.x, 1i), vec4<i32>(2027i, 10413i, global0[_wgslsmith_index_u32(37925u, 22u)], global0[_wgslsmith_index_u32(6002u, 22u)]), vec4<bool>(true, arg_1.x, true, var_1.b)) | max(vec4<i32>(-41393i, var_1.c.x, -27974i, 1i), vec4<i32>(0i, global0[_wgslsmith_index_u32(30007u, 22u)], global0[_wgslsmith_index_u32(31965u, 22u)], var_1.c.x)), arg_1), abs(-vec4<i32>(var_1.c.x, -22490i, 2147483647i, 0i)) | _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(var_1.d.x, 22u)], 26635i, global0[_wgslsmith_index_u32(u_input.a.x, 22u)], var_1.c.x), vec4<i32>(-25517i, global0[_wgslsmith_index_u32(0u, 22u)], -1509i, var_1.c.x)), countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], var_1.c.x, -2147483647i, 2147483647i)))), Struct_1(var_1.d));
    return select(arg_1.zy, arg_1.wz, var_1.b);
}

fn func_2(arg_0: i32) -> vec2<bool> {
    global0 = array<i32, 22>();
    let var_0 = -1i;
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-787f, -374f, -979f, 1679f) + vec4<f32>(-1278f, 242f, -595f, 146f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1202f, 1608f, -1387f, 868f), vec4<f32>(-360f, -2116f, 212f, 213f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(375f, _wgslsmith_f_op_f32(-216f * -2024f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), 1637f))));
    let var_2 = Struct_1(reverseBits(vec2<u32>(u_input.a.x, 67072u)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(831f))))))));
    return select(select(vec2<bool>(true, true), vec2<bool>(true, var_0 == _wgslsmith_add_i32(2147483647i, arg_0)), false), !select(vec2<bool>(true, select(false, false, true)), func_3(var_1.wzw, select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false))), any(vec3<bool>(true, false, true))), !any(vec4<bool>(true, true, true, true)) || !all(vec4<bool>(true, true, false, false)));
}

fn func_1() -> StorageBuffer {
    let var_0 = ~u_input.a.x;
    var var_1 = any(select(vec2<bool>(true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false))), vec2<bool>(any(vec3<bool>(true, true, true)), !all(vec2<bool>(false, false))), !func_2(global0[_wgslsmith_index_u32(~u_input.a.x, 22u)])));
    var var_2 = Struct_4(Struct_2(Struct_1(~vec2<u32>(var_0, u_input.a.x)), true), Struct_1(~vec2<u32>(_wgslsmith_sub_u32(6623u, var_0), var_0)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -909f, -747f, -991f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(767f, -150f, 374f, 1158f) + vec4<f32>(-517f, 462f, -1438f, -185f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(958f, -570f, -287f, 769f))), vec4<f32>(145f, -496f, -830f, -2028f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-1516f, 1345f, 627f, -1167f), vec4<f32>(-560f, -133f, 213f, -764f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-243f, -775f, 199f, -759f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1119f, 186f, 1433f, 579f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-426f, 2740f, -150f, 1001f)))), func_2(_wgslsmith_sub_i32(2147483647i >> (var_0 % 32u), global0[_wgslsmith_index_u32(48831u, 22u)])).x)), -(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(0i, global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)])), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], 0i, -35477i, 1i) >> (u_input.a % vec4<u32>(32u))) | vec4<i32>(global0[_wgslsmith_index_u32(var_0, 22u)] & 2147483647i, -2147483647i, max(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(var_0, 22u)]), global0[_wgslsmith_index_u32(~4294967295u, 22u)])), Struct_1(~(vec2<u32>(50408u, 1u) ^ vec2<u32>(4294967295u, var_0)) & _wgslsmith_add_vec2_u32(~u_input.a.wz, vec2<u32>(var_0, u_input.a.x))));
    var var_3 = ~var_2.d.yw;
    let var_4 = -var_2.d.xy;
    return StorageBuffer(vec2<u32>(u_input.a.x, var_2.e.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

