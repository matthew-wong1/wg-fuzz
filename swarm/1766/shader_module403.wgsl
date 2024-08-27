struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(-693f, -1000f, 1642f, -698f), vec4<f32>(-244f, 1643f, 820f, 658f), vec4<f32>(1996f, -1000f, -370f, 905f), vec4<f32>(406f, -765f, -1000f, -827f), vec4<f32>(529f, -903f, 1899f, -1002f), vec4<f32>(1731f, 1469f, -1108f, -239f), vec4<f32>(-455f, -631f, -545f, -1355f), vec4<f32>(157f, 2112f, -1000f, -550f), vec4<f32>(539f, 1064f, -480f, 296f), vec4<f32>(-445f, -449f, 133f, 937f), vec4<f32>(1360f, 946f, -1278f, 514f), vec4<f32>(365f, 1000f, -581f, 346f), vec4<f32>(-1790f, -252f, 293f, 1000f), vec4<f32>(-2590f, 270f, 392f, 1152f), vec4<f32>(-1006f, 849f, 971f, -718f), vec4<f32>(120f, -1061f, -1000f, -1233f), vec4<f32>(-468f, 587f, -409f, -598f), vec4<f32>(1204f, -472f, 1102f, -661f), vec4<f32>(348f, -1289f, 1000f, -1915f));

var<private> global1: Struct_1;

var<private> global2: Struct_2 = Struct_2(false, 2147483647i, Struct_1(38758i, 28008u, vec2<u32>(30718u, 1u), false, vec3<i32>(1i, 0i, 27757i)));

var<private> global3: u32 = 5139u;

var<private> global4: array<u32, 5>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-460f, -735f, _wgslsmith_f_op_f32(-235f - 1073f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-557f, 765f, 737f))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-700f, 2046f)), 800f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(152f * 310f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-150f, -273f, false))))));
    global0 = array<vec4<f32>, 19>();
    global3 = 4294967295u;
    var var_1 = ~(max(vec3<i32>(global2.c.e.x, abs(arg_0.a), -1i >> (1u % 32u)), countOneBits(global2.c.e)) << (abs(u_input.c.wxw) % vec3<u32>(32u)));
    global4 = array<u32, 5>();
    return ~(abs(~global4[_wgslsmith_index_u32(7444u, 5u)] ^ ~1u) & reverseBits(_wgslsmith_clamp_u32(4294967295u, 0u, firstTrailingBit(1u))));
}

fn func_3(arg_0: u32) -> i32 {
    global2 = Struct_2(all(select(select(vec3<bool>(false, global1.d, global1.d), select(vec3<bool>(true, global1.d, global2.a), vec3<bool>(global1.d, global1.d, global2.c.d), vec3<bool>(true, false, true)), false), vec3<bool>(all(vec3<bool>(global2.a, false, global1.d)), false, true), vec3<bool>(any(vec2<bool>(global2.c.d, global1.d)), 0u < global1.c.x, global2.a))), global1.a, global2.c);
    let var_0 = -_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global2.c.e.x, global2.b, 7666i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, 2147483647i, -1i), vec3<i32>(-1i, u_input.a.x, -1i))), ~min(global1.e, u_input.a.xyy)), ~(-vec3<i32>(global2.c.e.x, global2.b, -72761i)) << (_wgslsmith_div_vec3_u32(u_input.c.wzw, vec3<u32>(global2.c.b, 20613u, 122278u)) % vec3<u32>(32u)));
    var var_1 = ~(~30721u);
    var var_2 = ~firstTrailingBit(~(~u_input.c.yw));
    var_1 = firstTrailingBit(1u);
    return 63898i;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global2 = Struct_2(true, -4052i, global2.c);
    let var_0 = Struct_2(all(vec2<bool>(!(global2.a & false), global1.d)), _wgslsmith_mult_i32(global1.e.x, 2873i), Struct_1(~func_3(func_2(Struct_1(37517i, global2.c.c.x, vec2<u32>(arg_0, global4[_wgslsmith_index_u32(29986u, 5u)]), global1.d, global1.e))), abs(~global1.c.x) ^ _wgslsmith_dot_vec2_u32(min(u_input.b, global1.c), global2.c.c), ~select(~vec2<u32>(98400u, u_input.b.x), global2.c.c, select(vec2<bool>(global2.c.d, true), vec2<bool>(global2.c.d, global2.c.d), vec2<bool>(global1.d, global1.d))), select(all(vec4<bool>(global2.a, false, global2.a, global1.d)), false, !global2.c.d), global2.c.e));
    var var_1 = Struct_2(select(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global4[_wgslsmith_index_u32(1586u, 5u)], 4294967295u), u_input.c.www) <= _wgslsmith_dot_vec4_u32(~u_input.c, ~u_input.c), false, all(vec2<bool>(var_0.c.d, true && global1.d))), global1.e.x, Struct_1(firstLeadingBit(firstLeadingBit(0i)), ~(~6924u | select(global2.c.c.x, 62287u, false)), vec2<u32>(37771u, firstLeadingBit(global4[_wgslsmith_index_u32(countOneBits(arg_0), 5u)])), all(vec3<bool>(global2.c.d, true, global1.d)) != var_0.a, reverseBits(vec3<i32>(_wgslsmith_add_i32(var_0.b, global2.b), _wgslsmith_dot_vec2_i32(vec2<i32>(-10781i, var_0.b), global2.c.e.zy), _wgslsmith_mod_i32(u_input.d.x, -1i)))));
    global2 = var_0;
    var_1 = Struct_2(!(!global2.c.d), -2147483647i, var_1.c);
    return Struct_1(1i, ~global2.c.c.x, ~_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(19717u, var_1.c.b), ~4294967295u), var_1.c.c), var_0.a, var_1.c.e & abs(_wgslsmith_div_vec3_i32(global2.c.e, vec3<i32>(global2.c.a, -2147483647i, global2.c.a)) | vec3<i32>(global2.c.a, u_input.d.x, 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(true, global1.e.x, func_1(~_wgslsmith_mult_u32(global1.c.x, ~global2.c.b)));
    var var_0 = u_input.c.yzy;
    let var_1 = Struct_1(countOneBits(abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.e.x, 30856i, -2147483647i, global1.a), u_input.a), -2147483647i))), min(select(global2.c.c.x, abs(0u), !(!global1.d)), _wgslsmith_dot_vec2_u32(var_0.xx, vec2<u32>(u_input.c.x, u_input.c.x))), vec2<u32>(0u, global2.c.c.x), any(vec4<bool>(true, true, false, all(select(vec4<bool>(global2.a, global1.d, true, false), vec4<bool>(global2.a, true, global1.d, false), global1.d)))), _wgslsmith_mult_vec3_i32(vec3<i32>(global2.b, 0i, ~_wgslsmith_clamp_i32(u_input.d.x, -54309i, 1i)), reverseBits(-(~vec3<i32>(global1.a, global2.b, -1i)))));
    global0 = array<vec4<f32>, 19>();
    var var_2 = Struct_1(~var_1.e.x, 17949u, _wgslsmith_add_vec2_u32(var_0.yx, _wgslsmith_mult_vec2_u32(~var_0.xx, ~vec2<u32>(u_input.c.x, var_0.x))), global1.d, ~u_input.a.zyw);
    var_2 = var_1;
    var var_3 = ~vec4<u32>(15886u, ~(~_wgslsmith_mod_u32(var_0.x, 4294967295u)), ~_wgslsmith_add_u32(var_2.c.x, var_1.b ^ 31472u), ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global2.c.c.x, global4[_wgslsmith_index_u32(4294967295u, 5u)], 0u)), _wgslsmith_sub_vec3_u32(u_input.c.xxx, u_input.c.xyx)));
    var_0 = min(vec3<u32>(~u_input.c.x, 1u, 5005u), var_3.xxw);
    global4 = array<u32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(~1i);
}

