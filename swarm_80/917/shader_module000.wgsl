struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(9770i, -207f), Struct_3(-36127i, -1233f), Struct_3(5228i, -1387f), Struct_3(i32(-2147483648), 115f), Struct_3(12753i, 972f), Struct_3(2147483647i, 156f), Struct_3(1i, -108f), Struct_3(0i, 1000f), Struct_3(0i, -833f), Struct_3(0i, -114f), Struct_3(1i, -1009f), Struct_3(-19847i, -1365f), Struct_3(2147483647i, -791f), Struct_3(2147483647i, 686f), Struct_3(0i, -825f), Struct_3(2216i, -674f), Struct_3(-45413i, 1000f), Struct_3(18525i, -1063f), Struct_3(2147483647i, -1239f), Struct_3(22785i, 1120f));

var<private> global1: Struct_3 = Struct_3(0i, -1439f);

var<private> global2: array<vec3<u32>, 31>;

var<private> global3: Struct_4;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> u32 {
    global2 = array<vec3<u32>, 31>();
    let var_0 = vec3<i32>(~48454i, u_input.d.x, global1.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global3.c)), _wgslsmith_f_op_f32(-global3.e))), global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3.c)) - -1199f))));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(0u, reverseBits(u_input.c >> (1u % 32u)) | firstTrailingBit(~23660u), u_input.c, global3.b.x), global3.b);
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: bool) -> Struct_2 {
    var var_0 = -(abs(vec4<i32>(5308i, _wgslsmith_clamp_i32(u_input.d.x, 21855i, -115826i), ~(-12120i), _wgslsmith_mod_i32(13361i, -2147483647i))) << (~global3.b % vec4<u32>(32u)));
    var_0 = countOneBits(_wgslsmith_mult_vec4_i32(~(-vec4<i32>(-5234i, global1.a, -1i, -1i)), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-49933i, var_0.x, -71019i, 1i)), vec4<i32>(global1.a, -46661i, u_input.d.x, var_0.x))) | max(max(vec4<i32>(var_0.x, -2147483647i, global3.a, global1.a), ~vec4<i32>(0i, -2147483647i, global3.a, u_input.d.x)), ~vec4<i32>(1i, 19473i, global1.a, 9856i) >> (~global3.b % vec4<u32>(32u))));
    let var_1 = Struct_1(global3.d.yyx, i32(-1i) * -1i);
    let var_2 = func_3();
    let var_3 = Struct_4(~(-3501i), abs(vec4<u32>(~global3.b.x, 1u, 1u, _wgslsmith_div_u32(0u, 1u)) | ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 4405u, var_2), global3.b, vec4<u32>(4294967295u, var_2, 44356u, 59275u))), _wgslsmith_f_op_f32(-global1.b), vec4<bool>(arg_2, arg_2, var_1.a.x, false), _wgslsmith_f_op_f32(-627f - arg_1.x));
    return Struct_2(Struct_1(var_1.a, global3.a), true, var_3.a, var_1);
}

fn func_1() -> Struct_2 {
    let var_0 = !(!(1i <= global3.a));
    var var_1 = vec3<f32>(-932f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.e)), -632f);
    let var_2 = !vec3<bool>(!var_0, !(!(!global3.d.x)), -5990i >= ~(0i | u_input.d.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, var_1.x, 467f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-284f, 932f, 816f))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x, 465f))));
    global0 = array<Struct_3, 20>();
    return func_2(u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-1775f, _wgslsmith_f_op_f32(788f + 1595f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.e * global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(396f, global1.b))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-671f, 565f) * _wgslsmith_f_op_f32(-global1.b)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!select(select(select(vec3<bool>(true, true, global3.d.x), global3.d.wxz, false), select(global3.d.xxx, vec3<bool>(global3.d.x, false, global3.d.x), vec3<bool>(true, global3.d.x, global3.d.x)), false), global3.d.xxz, all(!vec2<bool>(false, global3.d.x))), global1.a);
    let var_1 = global3.e;
    var var_2 = ~vec3<i32>(-2147483647i, 35099i, var_0.b);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b));
    let var_4 = u_input.d.x;
    let var_5 = vec4<u32>(_wgslsmith_sub_u32(~select(15720u, global3.b.x, var_0.a.x), select(global3.b.x, ~21036u, var_0.a.x)) >> (20739u % 32u), ~global3.b.x, global3.b.x, ~global3.b.x);
    let var_6 = func_1();
    let var_7 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, -217f, 236f) + vec3<f32>(global1.b, 419f, -832f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3, 2444f, var_3)))))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(476f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1148f + var_3) * _wgslsmith_f_op_f32(-719f - global3.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3))))));
    let var_8 = func_1().a.a.xz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global3.b.x, u_input.c, 72106u, 4294967295u), var_5), vec4<u32>(27868u, u_input.a.x, 1u, global3.b.x)), select(max(global3.b, vec4<u32>(u_input.c, var_5.x, var_5.x, 47681u)), global3.b, vec4<bool>(var_8.x, false, true, var_0.a.x)), var_5) ^ ~global3.b, var_6.d.b, max(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_div_i32(u_input.d.x, u_input.d.x), -global1.a, global3.a), -_wgslsmith_sub_vec3_i32(vec3<i32>(-38128i, var_4, 14408i), vec3<i32>(global3.a, -12407i, -2147483647i))), ~(vec3<i32>(u_input.d.x, var_0.b, var_4) & _wgslsmith_mod_vec3_i32(vec3<i32>(-17213i, var_2.x, global3.a), vec3<i32>(27149i, -37803i, global1.a)))), _wgslsmith_div_vec3_i32(min(vec3<i32>(~var_4, var_4, var_2.x), ~countOneBits(vec3<i32>(24089i, 1i, -45553i))), firstTrailingBit(vec3<i32>(var_2.x, var_6.d.b, -12344i)) << (~_wgslsmith_sub_vec3_u32(u_input.b, global3.b.yzy) % vec3<u32>(32u))), var_0.b);
}

