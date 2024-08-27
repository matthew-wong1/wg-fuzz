struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec4<u32>(1u, 18017u, 4294967295u, 1u), vec3<bool>(false, false, true), Struct_1(vec4<f32>(1000f, 1000f, -1829f, -280f)), 43900u, Struct_1(vec4<f32>(1088f, -1011f, -1224f, -433f))), Struct_2(vec4<u32>(64344u, 94248u, 0u, 64431u), vec3<bool>(true, true, false), Struct_1(vec4<f32>(-635f, 1352f, 1452f, -1000f)), 7937u, Struct_1(vec4<f32>(-1759f, 588f, -1000f, -1000f))), Struct_2(vec4<u32>(86961u, 0u, 18605u, 13281u), vec3<bool>(false, true, false), Struct_1(vec4<f32>(-482f, -344f, 1064f, 962f)), 4294967295u, Struct_1(vec4<f32>(-911f, -140f, -605f, -942f))), Struct_2(vec4<u32>(10920u, 0u, 26944u, 4294967295u), vec3<bool>(false, false, true), Struct_1(vec4<f32>(143f, 1806f, 1295f, -574f)), 55788u, Struct_1(vec4<f32>(1000f, 2345f, -247f, 1347f))), Struct_2(vec4<u32>(1u, 40039u, 10586u, 53023u), vec3<bool>(false, true, true), Struct_1(vec4<f32>(-1194f, 193f, -1265f, -1917f)), 4294967295u, Struct_1(vec4<f32>(157f, -2200f, -1000f, 1000f))), Struct_2(vec4<u32>(48774u, 12466u, 0u, 0u), vec3<bool>(true, false, false), Struct_1(vec4<f32>(-640f, 370f, 410f, 475f)), 0u, Struct_1(vec4<f32>(-1000f, 1112f, 526f, -210f))), Struct_2(vec4<u32>(4294967295u, 1727u, 1u, 1u), vec3<bool>(true, true, false), Struct_1(vec4<f32>(-1027f, 188f, 238f, -583f)), 0u, Struct_1(vec4<f32>(808f, -1093f, 590f, 728f))), Struct_2(vec4<u32>(0u, 1u, 1u, 0u), vec3<bool>(false, true, false), Struct_1(vec4<f32>(594f, -702f, 1056f, 633f)), 30750u, Struct_1(vec4<f32>(-2350f, 208f, 482f, -389f))), Struct_2(vec4<u32>(32186u, 0u, 15303u, 0u), vec3<bool>(false, false, true), Struct_1(vec4<f32>(162f, 354f, -1000f, 204f)), 1u, Struct_1(vec4<f32>(236f, -991f, -467f, 374f))), Struct_2(vec4<u32>(4856u, 0u, 34293u, 0u), vec3<bool>(true, true, false), Struct_1(vec4<f32>(861f, 1468f, 589f, 268f)), 4294967295u, Struct_1(vec4<f32>(-1343f, 453f, -475f, -752f))), Struct_2(vec4<u32>(1u, 28635u, 1u, 3307u), vec3<bool>(true, false, false), Struct_1(vec4<f32>(2179f, 438f, -389f, 1150f)), 4294967295u, Struct_1(vec4<f32>(-791f, -255f, 1551f, -257f))), Struct_2(vec4<u32>(4294967295u, 12909u, 0u, 69709u), vec3<bool>(true, true, true), Struct_1(vec4<f32>(-625f, 1318f, -1125f, 1000f)), 9543u, Struct_1(vec4<f32>(-455f, -1124f, 1655f, -1114f))), Struct_2(vec4<u32>(4294967295u, 1u, 4294967295u, 27676u), vec3<bool>(false, true, true), Struct_1(vec4<f32>(-1433f, -683f, -1684f, -304f)), 1u, Struct_1(vec4<f32>(2189f, 1000f, 1000f, 2449f))));

var<private> global1: u32 = 0u;

var<private> global2: Struct_2;

var<private> global3: vec2<i32> = vec2<i32>(1i, -1i);

var<private> global4: array<vec2<u32>, 8>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> u32 {
    return 48862u >> ((u_input.c ^ ~(~_wgslsmith_mod_u32(global2.d, u_input.c))) % 32u);
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    global2 = Struct_2(abs(reverseBits(global2.a)), vec3<bool>(false, any(arg_0.b.zx), arg_0.b.x), arg_0.e, ~(~select(u_input.a.x & 21996u, 68401u, true)), global2.c);
    global1 = ~(43822u | u_input.a.x);
    global4 = array<vec2<u32>, 8>();
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global2.e.a.xyx), _wgslsmith_f_op_vec3_f32(arg_0.c.a.wxz * vec3<f32>(-1627f, 353f, 782f)))))) * _wgslsmith_f_op_vec3_f32(-global2.e.a.wzy)), _wgslsmith_f_op_vec3_f32(sign(global2.e.a.zzx)));
    let var_1 = Struct_1(global2.c.a);
    return min(vec4<i32>(global3.x, global3.x, -2147483647i, 1i), vec4<i32>(u_input.b, ~abs(-13110i) | ((i32(-1i) * -1i) ^ _wgslsmith_mod_i32(global3.x, -67660i)), 1i, -24190i));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> bool {
    let var_0 = _wgslsmith_mult_u32(firstTrailingBit(u_input.c), 27136u);
    global4 = array<vec2<u32>, 8>();
    let var_1 = vec3<u32>(66432u, 1u, ~_wgslsmith_sub_u32(_wgslsmith_add_u32(18273u, 50133u), arg_1.d) << (arg_1.d % 32u));
    var var_2 = vec2<u32>(33859u, var_1.x);
    global1 = ~arg_1.a.x;
    return all(arg_1.b);
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.c.a.x)))));
    let var_1 = func_4(true, Struct_2(vec4<u32>(4294967295u << (u_input.a.x % 32u), ~u_input.c, 28173u, ~global2.a.x) << (vec4<u32>(func_1(), func_1(), select(global2.d, u_input.a.x, true), select(u_input.c, global2.a.x, true)) % vec4<u32>(32u)), global2.b, global2.e, _wgslsmith_mod_u32(67588u, _wgslsmith_mod_u32(~global2.a.x, 0u)), global2.c), global2.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-6481i, -1005i, 44708i, countOneBits(1i)), func_3(Struct_2(global2.a, !global2.b, global2.c, 4294967295u, Struct_1(vec4<f32>(var_0, global2.e.a.x, var_0, 1647f))))));
    var var_2 = global4[_wgslsmith_index_u32(~(global2.a.x ^ _wgslsmith_mult_u32(~(global2.d | 1u), 45653u)), 8u)];
    global3 = select(vec2<i32>(-func_3(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 41226u), 13u)]).x, 0i >> (global2.a.x % 32u)), vec2<i32>(firstTrailingBit(1i), u_input.b), !select(!global2.b.yz, !(!global2.b.xz), global2.b.yx));
    global2 = global0[_wgslsmith_index_u32(func_1() | 0u, 13u)];
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(1i);
    global1 = _wgslsmith_div_u32(func_1(), ~(~u_input.c));
    let var_1 = firstLeadingBit(vec4<i32>(813i, ~(~(global3.x << (u_input.c % 32u))), 1i, _wgslsmith_mult_i32(func_2(), _wgslsmith_mult_i32(2147483647i, ~u_input.b))));
    var_0 = -(i32(-1i) * -20739i);
    var var_2 = vec3<i32>(global3.x, -(~reverseBits(_wgslsmith_dot_vec3_i32(var_1.xyz, vec3<i32>(28648i, global3.x, -224i)))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, var_1.x), var_1.zw), u_input.b >> (global2.a.x % 32u)), global3.x) ^ ~firstLeadingBit(max(u_input.b, var_1.x)));
    var var_3 = global0[_wgslsmith_index_u32(firstTrailingBit(global2.a.x), 13u)];
    let var_4 = firstTrailingBit(~(~0u) ^ u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1768f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.e.a.x + -787f)))))));
}

