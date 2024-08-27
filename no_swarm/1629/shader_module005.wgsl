struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 24>;

var<private> global1: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(1000f, 1034f, -572f, 307f), vec4<f32>(-161f, -1000f, -1757f, -1361f), vec4<f32>(-800f, -184f, 409f, 461f), vec4<f32>(-1615f, 165f, -2582f, 594f), vec4<f32>(1000f, 902f, -978f, -786f), vec4<f32>(-994f, -2176f, -1416f, -484f), vec4<f32>(-2166f, -361f, 198f, -1000f), vec4<f32>(183f, -1087f, 174f, -1000f), vec4<f32>(-505f, 1000f, -1000f, 1087f), vec4<f32>(-449f, -491f, 470f, -360f), vec4<f32>(225f, -2188f, 1000f, 1621f), vec4<f32>(366f, 747f, 149f, -1416f), vec4<f32>(405f, -191f, 413f, 953f));

var<private> global2: array<f32, 19> = array<f32, 19>(-740f, 272f, 819f, 475f, 340f, -1468f, -1000f, -1000f, -2569f, 231f, 1387f, -888f, -1010f, 139f, -872f, 839f, -1000f, -1068f, -770f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    return Struct_1(-2031f);
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    global1 = array<vec4<f32>, 13>();
    global2 = array<f32, 19>();
    global1 = array<vec4<f32>, 13>();
    var var_0 = Struct_1(global2[_wgslsmith_index_u32(1u, 19u)]);
    let var_1 = arg_0;
    return ~(abs(vec4<i32>(1i, _wgslsmith_sub_i32(u_input.a.x, 1i), u_input.a.x, 1i)) >> (~(~vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<f32>, arg_3: i32) -> bool {
    var var_0 = func_2();
    var var_1 = -func_3(Struct_1(arg_2.x));
    let var_2 = all(arg_0.yw);
    var var_3 = _wgslsmith_f_op_f32(ceil(arg_2.x));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)));
    return var_2 || !(any(select(arg_0.zx, vec2<bool>(arg_0.x, arg_0.x), arg_0.x)) && false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(firstLeadingBit(10631u));
    let var_1 = false | select(all(vec4<bool>(true, true, 1u != var_0, false)), func_1(vec4<bool>(false, true, true, true), true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1321f, global2[_wgslsmith_index_u32(1u, 19u)]))), vec2<f32>(global2[_wgslsmith_index_u32(62423u, 19u)], global2[_wgslsmith_index_u32(65893u, 19u)])), max(max(-3506i, u_input.b.x), abs(1i))), false || (true || (var_0 == 18541u)));
    let var_2 = Struct_1(global2[_wgslsmith_index_u32(4294967295u, 19u)]);
    global2 = array<f32, 19>();
    let var_3 = -18703i;
    global2 = array<f32, 19>();
    let var_4 = vec2<f32>(global2[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(max(var_0, var_0) & var_0, firstLeadingBit(min(var_0, 1152u)))), 19u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.a, -1266f, true)) - _wgslsmith_f_op_f32(-var_2.a)));
    var var_5 = Struct_1(_wgslsmith_f_op_f32(712f - _wgslsmith_f_op_f32(max(-107f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a, -921f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(253f, _wgslsmith_f_op_f32(-448f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-968f + global2[_wgslsmith_index_u32(var_0, 19u)])))), _wgslsmith_clamp_vec4_u32(firstTrailingBit(reverseBits(~vec4<u32>(var_0, 82185u, var_0, 106595u))), select(firstTrailingBit(vec4<u32>(88805u, var_0, 4294967295u, 70763u)), vec4<u32>(4294967295u, var_0, var_0, 5992u), true) >> (~(vec4<u32>(1u, var_0, 39625u, 32500u) ^ vec4<u32>(var_0, var_0, 54802u, var_0)) % vec4<u32>(32u)), ~vec4<u32>(~0u, 0u, 0u, var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1706f - 194f), 499f, var_5.a)), firstTrailingBit(_wgslsmith_add_vec3_i32(min(u_input.b, u_input.a << (vec3<u32>(43948u, var_0, 4294967295u) % vec3<u32>(32u))), -vec3<i32>(-33261i, u_input.a.x, u_input.a.x))));
}

