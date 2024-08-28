struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global1: array<Struct_1, 2>;

var<private> global2: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(786f, -502f, 954f), vec3<f32>(113f, 209f, 1671f), vec3<f32>(1113f, 435f, 1527f), vec3<f32>(726f, -1276f, -840f), vec3<f32>(1712f, 205f, 1000f), vec3<f32>(1167f, -255f, -1376f), vec3<f32>(1238f, -342f, -109f), vec3<f32>(1397f, -1228f, -610f), vec3<f32>(-1000f, 1193f, 1000f), vec3<f32>(-334f, -1000f, -736f), vec3<f32>(-371f, -403f, 1814f), vec3<f32>(893f, 1250f, -334f), vec3<f32>(719f, 1726f, -1000f), vec3<f32>(-1113f, -151f, 169f), vec3<f32>(-1250f, 1226f, -568f), vec3<f32>(759f, 115f, -1087f), vec3<f32>(-1977f, 362f, -241f), vec3<f32>(-368f, -364f, -226f), vec3<f32>(1000f, 1391f, 695f), vec3<f32>(318f, -462f, -1895f), vec3<f32>(-452f, -751f, 656f), vec3<f32>(1409f, 476f, 879f), vec3<f32>(-1000f, -497f, -158f), vec3<f32>(563f, 1000f, -670f), vec3<f32>(-508f, 1000f, 896f), vec3<f32>(-1478f, 203f, 1384f), vec3<f32>(-534f, -455f, 495f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 2u)];
    var var_1 = Struct_2(arg_0, _wgslsmith_sub_vec2_i32(min(vec2<i32>(min(2147483647i, -49313i), ~u_input.b), ~(vec2<i32>(var_0.a.x, u_input.b) | var_0.a)), arg_0.a));
    return -6584i & (firstLeadingBit(var_0.a.x) ^ firstLeadingBit(reverseBits(-var_0.a.x)));
}

fn func_2(arg_0: vec4<i32>) -> vec2<i32> {
    let var_0 = Struct_2(Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0.xy, vec2<i32>(44362i, -2147483647i)) | -10005i, _wgslsmith_mult_i32(func_3(Struct_1(arg_0.zx)), _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(u_input.b, -30769i, 2147483647i, 47895i))))), vec2<i32>(-abs(abs(u_input.b)), u_input.b));
    global1 = array<Struct_1, 2>();
    let var_1 = -243f;
    let var_2 = vec2<bool>(any(!vec3<bool>(global0.x, false, false)) && false, true);
    global0 = vec4<bool>(((_wgslsmith_div_f32(1314f, var_1) == _wgslsmith_f_op_f32(-var_1)) == true) | all(global0.zw), (_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(0u, 5812u, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(27170u, 50104u, u_input.a), vec3<u32>(1u, 14397u, u_input.a))) < ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 7136u))) || any(select(vec3<bool>(global0.x, var_2.x, var_2.x), vec3<bool>(false, var_2.x, var_2.x), !global0.xyx)), var_2.x, select(_wgslsmith_dot_vec4_u32(~vec4<u32>(13876u, 1u, 10515u, 0u), min(vec4<u32>(59284u, u_input.a, u_input.a, 13387u), vec4<u32>(15096u, 1u, 1u, 11026u))) == _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a) & vec3<u32>(u_input.a, 1u, u_input.a), countOneBits(vec3<u32>(u_input.a, u_input.a, 35580u))), false, true));
    return firstLeadingBit(var_0.b) ^ var_0.a.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: u32) -> i32 {
    global1 = array<Struct_1, 2>();
    var var_0 = Struct_1(max(_wgslsmith_div_vec2_i32(firstTrailingBit(~vec2<i32>(u_input.b, u_input.b)), vec2<i32>(min(u_input.b, 33533i), arg_1)), func_2(firstLeadingBit(reverseBits(vec4<i32>(u_input.b, arg_1, 1i, -1i))))));
    global2 = array<vec3<f32>, 27>();
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(1u, 2u)], var_0.a);
    var_0 = global1[_wgslsmith_index_u32(4294967295u, 2u)];
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(u_input.b, countOneBits(_wgslsmith_sub_i32((u_input.b ^ u_input.b) ^ (u_input.b << (4294967295u % 32u)), func_1(vec2<f32>(-1000f, 1553f), _wgslsmith_mult_i32(u_input.b, u_input.b), u_input.a))), func_3(global1[_wgslsmith_index_u32((u_input.a & ~u_input.a) | 0u, 2u)]));
    let var_1 = Struct_2(Struct_1(var_0.zx), vec2<i32>(var_0.x, ~(-22041i)) << ((vec2<u32>(~4294967295u, 4294967295u) << (min(vec2<u32>(0u, 4294967295u) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), vec2<u32>(0u, 0u) | vec2<u32>(u_input.a, 0u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_2 = !(!vec2<bool>(any(vec2<bool>(global0.x, global0.x)), !global0.x));
    let var_3 = _wgslsmith_sub_vec4_i32(min(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), var_1.a.a), _wgslsmith_dot_vec2_i32(var_1.a.a, vec2<i32>(var_1.b.x, -1i)) | var_0.x, var_1.a.a.x, var_0.x), min(-vec4<i32>(u_input.b, u_input.b, -32231i, var_0.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a.a.x, 12354i, 1i, u_input.b), vec4<i32>(var_0.x, -1i, -48676i, 77128i) ^ vec4<i32>(2147483647i, u_input.b, -2147483647i, u_input.b)))), ~_wgslsmith_mod_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, u_input.b, var_1.a.a.x, -1i), vec4<i32>(var_1.a.a.x, u_input.b, -30239i, -65483i), vec4<i32>(-58185i, -30806i, -41161i, u_input.b)), countOneBits(firstLeadingBit(vec4<i32>(var_1.a.a.x, 2147483647i, -1i, u_input.b)))));
    var var_4 = global1[_wgslsmith_index_u32(1u, 2u)];
    var var_5 = var_2.x;
    var var_6 = ~0i;
    var var_7 = var_1;
    let var_8 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(1u), -var_7.b.x, 1f, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-707f - 611f) - _wgslsmith_f_op_f32(min(2055f, 1000f))), -186f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -808f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -550f))))), 31718u);
}

