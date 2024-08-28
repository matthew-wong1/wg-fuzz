struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<u32>(5478u, 1u, 13041u), true), Struct_1(vec3<u32>(4294967295u, 6134u, 1u), false));

var<private> global1: i32 = 2147483647i;

var<private> global2: i32 = 1i;

var<private> global3: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<u32>(1u, 0u, 0u), true), Struct_1(vec3<u32>(4294967295u, 4294967295u, 32440u), true), Struct_1(vec3<u32>(1u, 0u, 15897u), true), Struct_1(vec3<u32>(39222u, 4294967295u, 44586u), false), Struct_1(vec3<u32>(0u, 4294967295u, 1u), true), Struct_1(vec3<u32>(28978u, 4294967295u, 1u), false), Struct_1(vec3<u32>(14921u, 0u, 0u), false), Struct_1(vec3<u32>(1u, 1u, 0u), false), Struct_1(vec3<u32>(4294967295u, 1u, 0u), true), Struct_1(vec3<u32>(0u, 4294967295u, 0u), true), Struct_1(vec3<u32>(1u, 1u, 4294967295u), false), Struct_1(vec3<u32>(1u, 1u, 72787u), true), Struct_1(vec3<u32>(17546u, 26498u, 23151u), true), Struct_1(vec3<u32>(1u, 4294967295u, 24739u), false), Struct_1(vec3<u32>(4294967295u, 1630u, 81857u), false), Struct_1(vec3<u32>(7869u, 4294967295u, 58957u), false), Struct_1(vec3<u32>(1u, 1u, 60900u), false), Struct_1(vec3<u32>(1u, 672u, 12324u), true), Struct_1(vec3<u32>(3393u, 42294u, 35552u), false), Struct_1(vec3<u32>(0u, 0u, 1u), true), Struct_1(vec3<u32>(1u, 1u, 21517u), false), Struct_1(vec3<u32>(0u, 0u, 56799u), false), Struct_1(vec3<u32>(1u, 19119u, 3865u), true), Struct_1(vec3<u32>(4294967295u, 4294967295u, 24250u), true), Struct_1(vec3<u32>(1u, 15860u, 1u), false), Struct_1(vec3<u32>(0u, 0u, 86607u), true), Struct_1(vec3<u32>(47986u, 9099u, 6720u), true), Struct_1(vec3<u32>(86248u, 66527u, 0u), true), Struct_1(vec3<u32>(56670u, 90136u, 1u), true));

var<private> global4: i32 = 11786i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    return reverseBits(~reverseBits(1i));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    var var_0 = 4294967295u;
    global2 = countOneBits(reverseBits(_wgslsmith_mult_i32(_wgslsmith_sub_i32(max(-2976i, -13793i), 34024i), u_input.a.x)));
    var var_1 = ~(~global0.b.a.x);
    let var_2 = arg_1;
    global1 = (u_input.a.x & reverseBits(-3445i)) | func_3(Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(13513u, 4294967295u, arg_2.a.x), vec3<u32>(49802u, var_2.a.a.x, 0u)), var_2.a.a << (var_2.b.a % vec3<u32>(32u)), arg_0.a), arg_0.b), arg_2.b || global0.b.b);
    return 147f;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> vec3<bool> {
    global4 = (i32(-1i) * -25720i) >> ((arg_1.a.x << ((~(~global0.b.a.x) | ~(~32355u)) % 32u)) % 32u);
    var var_0 = vec2<u32>(global0.a.a.x, ~_wgslsmith_mod_u32(4294967295u, 1u));
    global1 = ~(-_wgslsmith_sub_i32(arg_2, -_wgslsmith_dot_vec3_i32(u_input.a.wxz, u_input.a.zxy)));
    global2 = _wgslsmith_dot_vec3_i32(abs(u_input.a.zwz), _wgslsmith_sub_vec3_i32(u_input.a.zwz, vec3<i32>(~_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), ~(-arg_2), arg_2)));
    global0 = Struct_2(Struct_1(vec3<u32>(3666u, _wgslsmith_dot_vec3_u32(global0.b.a, select(arg_1.a, vec3<u32>(arg_1.a.x, var_0.x, arg_1.a.x), vec3<bool>(true, false, arg_1.b))), select(reverseBits(0u), 4294967295u, false)), _wgslsmith_mod_u32(0u, var_0.x) != ~113758u), Struct_1(global0.b.a, any(vec3<bool>(true, true, true))));
    return select(!(!(!(!vec3<bool>(arg_1.b, false, global0.a.b)))), !(!vec3<bool>(false, all(vec3<bool>(arg_1.b, global0.a.b, false)), true)), true);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = func_4(-976f, global3[_wgslsmith_index_u32(~1u, 29u)], select(~u_input.a.x, u_input.a.x, !(global0.b.b || false) != false));
    let var_1 = 472f;
    var var_2 = Struct_1(~global0.b.a, arg_1.x);
    global2 = _wgslsmith_add_i32(~1i, ~(func_3(Struct_1(vec3<u32>(global0.a.a.x, var_2.a.x, var_2.a.x), arg_0.x), arg_1.x) >> (~0u % 32u)) | -21838i);
    var var_3 = global0.b.a.x;
    return Struct_2(global3[_wgslsmith_index_u32(29619u, 29u)], global0.b);
}

fn func_1() -> StorageBuffer {
    var var_0 = -364f;
    let var_1 = Struct_1(_wgslsmith_sub_vec3_u32(~(vec3<u32>(global0.a.a.x, 1u, 1u) & vec3<u32>(global0.b.a.x, global0.a.a.x, global0.b.a.x)), global0.b.a), true);
    let var_2 = ~abs(countOneBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.b.a.x, 4294967295u, 1u, var_1.a.x), vec4<u32>(20553u, var_1.a.x, var_1.a.x, 17357u), vec4<u32>(51535u, var_1.a.x, 4294967295u, var_1.a.x))));
    let var_3 = func_5(select(func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(var_1, Struct_2(global0.b, global0.a), Struct_1(var_2.zwz, false))), _wgslsmith_f_op_f32(-1213f * 1264f))), global3[_wgslsmith_index_u32(max(~56518u, ~3410u), 29u)], 41124i), func_4(_wgslsmith_f_op_f32(-2892f + _wgslsmith_f_op_f32(f32(-1f) * -325f)), Struct_1(global0.b.a, 4294967295u <= var_1.a.x), _wgslsmith_dot_vec2_i32(-u_input.a.zw, select(vec2<i32>(21832i, 35777i), vec2<i32>(u_input.a.x, 11899i), true))), vec3<bool>(10218i < u_input.a.x, true, true)), select(!(!(!vec4<bool>(true, true, var_1.b, false))), !(!vec4<bool>(false, false, global0.a.b, true)), true));
    var var_4 = firstTrailingBit(11527i);
    return StorageBuffer(_wgslsmith_dot_vec3_u32(firstTrailingBit(max(~vec3<u32>(33530u, var_2.x, 17457u), var_2.xzy)), vec3<u32>(1876u << ((var_2.x >> (var_2.x % 32u)) % 32u), 1u, ~_wgslsmith_dot_vec4_u32(var_2, vec4<u32>(26626u, var_3.b.a.x, 0u, global0.b.a.x)))), ~(~var_2), ~(~var_3.a.a), max(4294967295u, var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~(max(global0.b.a.x, 0u) >> (~82455u % 32u))));
    global4 = -(i32(-1i) * -u_input.a.x);
    global3 = array<Struct_1, 29>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(155f, -786f, -1481f, 220f), vec4<f32>(1493f, -1651f, -537f, 142f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1658f, -182f, 1036f, 1835f), vec4<f32>(-662f, -2271f, -859f, -593f), vec4<bool>(true, global0.b.b, global0.a.b, global0.a.b))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1183f, 944f, -125f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -580f), -501f, -655f, 923f))));
    var var_2 = false;
    let var_3 = -vec2<i32>(1i, -(u_input.a.x >> (21294u % 32u)));
    let x = u_input.a;
    s_output = func_1();
}

