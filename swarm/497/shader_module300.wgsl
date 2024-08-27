struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: u32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(5055i, -1i), vec2<i32>(67611i, i32(-2147483648)), vec2<i32>(2099i, -28395i), vec2<i32>(-6476i, -66907i), vec2<i32>(4571i, 6375i), vec2<i32>(50223i, 2147483647i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(43859i, -1i), vec2<i32>(-44127i, -55777i), vec2<i32>(-26674i, 0i), vec2<i32>(-41642i, 46972i), vec2<i32>(0i, -5607i), vec2<i32>(81812i, 36218i), vec2<i32>(52195i, -19665i), vec2<i32>(-1i, 9163i), vec2<i32>(-1i, 0i));

var<private> global2: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(122791u, 1u, 31479u, 1u), vec4<u32>(75813u, 0u, 4294967295u, 5587u), vec4<u32>(0u, 8681u, 15674u, 39998u), vec4<u32>(40130u, 83791u, 21337u, 4294967295u), vec4<u32>(1u, 28753u, 18595u, 49639u), vec4<u32>(46861u, 454u, 0u, 24303u), vec4<u32>(40076u, 57891u, 1u, 39873u), vec4<u32>(9126u, 13771u, 0u, 33545u), vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec4<u32>(1u, 12957u, 12454u, 4294967295u), vec4<u32>(4294967295u, 16912u, 1u, 1u), vec4<u32>(39215u, 0u, 2024u, 4294967295u), vec4<u32>(6208u, 4294967295u, 31368u, 4294967295u), vec4<u32>(114562u, 1u, 12461u, 12350u), vec4<u32>(0u, 1u, 24342u, 0u), vec4<u32>(4294967295u, 4294967295u, 36742u, 23876u), vec4<u32>(1u, 1u, 122854u, 2511u), vec4<u32>(1u, 1u, 1u, 14310u), vec4<u32>(28908u, 63999u, 1u, 4294967295u), vec4<u32>(12752u, 0u, 4294967295u, 58671u), vec4<u32>(102903u, 11590u, 18739u, 27172u), vec4<u32>(0u, 4294967295u, 40050u, 4294967295u), vec4<u32>(4294967295u, 37788u, 4294967295u, 1u), vec4<u32>(4294967295u, 83669u, 94213u, 0u));

var<private> global3: Struct_2;

var<private> global4: vec2<i32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> vec4<u32> {
    global3 = arg_0;
    global3 = Struct_2(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(abs(arg_0.a), -global3.a & abs(vec2<i32>(2147483647i, arg_0.b.a))), firstLeadingBit(global1[_wgslsmith_index_u32(0u, 16u)])), arg_2, global3.c, _wgslsmith_div_u32(global3.c.x, min(~1u, 25622u)));
    global0 = array<Struct_1, 17>();
    var var_0 = 17226u;
    global3 = Struct_2(_wgslsmith_clamp_vec2_i32(-max(firstTrailingBit(vec2<i32>(1i, u_input.c)), global1[_wgslsmith_index_u32(u_input.b.x, 16u)]), vec2<i32>(-1i) * -(global3.a >> (arg_0.c.yw % vec2<u32>(32u))), vec2<i32>(max(_wgslsmith_clamp_i32(-1i, -1i, u_input.c), ~2147483647i), 6969i)), Struct_1(-1i), vec4<u32>(min(global3.c.x, max(5791u, countOneBits(4294967295u))), ~global3.d, u_input.d.x & _wgslsmith_dot_vec4_u32(vec4<u32>(19323u, arg_0.c.x, u_input.d.x, 4294967295u), u_input.d ^ vec4<u32>(arg_0.c.x, global3.c.x, 4294967295u, 4294967295u)), ~_wgslsmith_clamp_u32(firstLeadingBit(u_input.b.x), countOneBits(0u), 5167u)), u_input.a);
    return global3.c;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: vec4<f32>) -> bool {
    let var_0 = 68531u;
    let var_1 = ~56903u;
    global3 = Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(global4.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, arg_2.x, global3.a.x), vec3<i32>(u_input.c, arg_0.a, -1033i))), global3.a | ~vec2<i32>(global3.a.x, 13889i)) ^ _wgslsmith_mod_vec2_i32(abs(vec2<i32>(global4.x, -2147483647i)), abs(vec2<i32>(-17264i, -1i))), Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 0i, -18063i), vec3<i32>(arg_2.x, 2147483647i, -72739i)), vec3<i32>(2147483647i, global4.x, u_input.c) >> (vec3<u32>(u_input.b.x, 22250u, global3.d) % vec3<u32>(32u))) << (u_input.d.x % 32u)), _wgslsmith_sub_vec4_u32(u_input.d, _wgslsmith_mod_vec4_u32(global2[_wgslsmith_index_u32(62749u, 24u)], func_3(Struct_2(global3.a, Struct_1(global3.b.a), u_input.d, u_input.a), ~u_input.c, Struct_1(-13504i)))), var_1);
    var var_2 = global0[_wgslsmith_index_u32(0u, 17u)];
    var var_3 = Struct_2(_wgslsmith_clamp_vec2_i32(-vec2<i32>(countOneBits(var_2.a), global3.b.a), (countOneBits(global3.a) & firstLeadingBit(vec2<i32>(arg_0.a, arg_0.a))) << (global3.c.ww % vec2<u32>(32u)), abs(vec2<i32>(-1i ^ global3.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, -2147483647i, 86097i), vec4<i32>(1i, var_2.a, global3.b.a, arg_2.x))))), Struct_1(global3.a.x), func_3(Struct_2(global3.a, Struct_1(~40041i), ~(~u_input.d), abs(firstLeadingBit(var_0))), _wgslsmith_mult_i32(arg_2.x, 1i), global0[_wgslsmith_index_u32(u_input.b.x, 17u)]), 15060u);
    return var_1 <= (~(~4294967295u) ^ _wgslsmith_mult_u32(global3.d, min(var_3.c.x, 0u) << (min(var_3.d, var_0) % 32u)));
}

fn func_1(arg_0: Struct_2) -> bool {
    var var_0 = Struct_3(-372f);
    global0 = array<Struct_1, 17>();
    let var_1 = max(vec4<u32>(arg_0.c.x, 0u, global3.d, 0u), arg_0.c);
    var var_2 = !(select(true && func_2(global0[_wgslsmith_index_u32(arg_0.d, 17u)], vec2<f32>(-1126f, 510f), vec2<i32>(8249i, arg_0.a.x), vec4<f32>(var_0.a, var_0.a, -827f, 117f)), select(u_input.c < 2147483647i, false, true), true) != (_wgslsmith_f_op_f32(-var_0.a) <= 257f));
    let var_3 = global0[_wgslsmith_index_u32(global3.d, 17u)];
    return any(vec3<bool>(false, false, false));
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: bool, arg_3: bool) -> vec3<i32> {
    global2 = array<vec4<u32>, 24>();
    global1 = array<vec2<i32>, 16>();
    var var_0 = ~_wgslsmith_dot_vec4_u32(countOneBits(global3.c), abs(~global2[_wgslsmith_index_u32(global3.c.x, 24u)] | _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 17749u, u_input.d.x, global3.d), vec4<u32>(u_input.a, 8176u, 1u, 7766u))));
    let var_1 = ~(~vec4<u32>(firstTrailingBit(0u), 0u, _wgslsmith_mult_u32(global3.c.x & 4294967295u, _wgslsmith_mod_u32(global3.c.x, u_input.b.x)), global3.d));
    return firstLeadingBit(countOneBits(vec3<i32>(~(-1137i), u_input.c << (1u % 32u), 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.c);
    global0 = array<Struct_1, 17>();
    var_0 = Struct_1(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global4.x ^ global3.a.x, -var_0.a, -1i), func_4(func_1(Struct_2(global3.a, global3.b, vec4<u32>(global3.c.x, 0u, u_input.d.x, u_input.d.x), 21847u)), vec2<bool>(false, false), false, true))));
    var var_1 = _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~select(global3.c.yz, vec2<u32>(global3.d, 38569u), vec2<bool>(false, true)), ~vec2<u32>(0u, u_input.a)), ~(_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(global3.d, u_input.b.x)) | ~vec2<u32>(18145u, u_input.b.x))) >> ((global3.c.xz >> (vec2<u32>(u_input.a, ~_wgslsmith_div_u32(u_input.d.x, u_input.a)) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_2 = Struct_2(-(~countOneBits(vec2<i32>(var_0.a, global4.x))), global0[_wgslsmith_index_u32(0u, 17u)], ~u_input.d, u_input.a);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-546f, -1000f, 188f, -560f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(3053f, 1819f, 1000f, -911f), vec4<f32>(471f, 836f, 387f, -138f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1140f, -245f, 581f, 473f) + vec4<f32>(-885f, -122f, -1202f, -1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(-2133f)), ~global3.c.yx, ~func_3(Struct_2(vec2<i32>(1i, var_0.a) | var_2.a, Struct_1(var_2.a.x), vec4<u32>(var_2.d, global3.d, u_input.b.x, var_1.x), 42412u), -var_2.a.x, Struct_1(abs(2147483647i))).x);
}

