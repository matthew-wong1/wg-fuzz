struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: bool,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 0u, 1u, 36059u);

var<private> global1: Struct_2;

var<private> global2: array<i32, 28>;

var<private> global3: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(39998u, 4294967295u, 0u), vec3<u32>(4294967295u, 135106u, 43782u), vec3<u32>(4294967295u, 27001u, 4294967295u), vec3<u32>(43526u, 0u, 9291u), vec3<u32>(88188u, 73377u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 21896u, 0u), vec3<u32>(73541u, 4294967295u, 119823u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(39434u, 0u, 1u), vec3<u32>(1354u, 18716u, 64181u), vec3<u32>(26204u, 0u, 56657u), vec3<u32>(4294967295u, 1u, 28550u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(1u, 1u, 47572u), vec3<u32>(331u, 73750u, 4294967295u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<bool>) -> u32 {
    var var_0 = Struct_4(arg_2.www, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.b * 2549f), 1000f)))), global1.a.e, global1.a, Struct_2(global1.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global1.c.d)))), global1.a, u_input.a.xx));
    var var_1 = global1.a.c.x;
    var_0 = Struct_4(vec3<bool>(false, any(select(!vec2<bool>(false, var_0.c), select(vec2<bool>(arg_2.x, global1.c.e), var_0.a.zx, vec2<bool>(false, var_0.d.e)), u_input.c <= u_input.b.x)), false), _wgslsmith_f_op_f32(534f * var_0.e.a.d), all(!vec4<bool>(false, true, !arg_2.x, global1.a.e)), var_0.e.c, Struct_2(var_0.d, _wgslsmith_f_op_f32(f32(-1f) * -281f), Struct_1(global1.c.a, vec2<f32>(_wgslsmith_div_f32(var_0.b, -467f), _wgslsmith_f_op_f32(sign(var_0.b))), reverseBits(vec4<i32>(global2[_wgslsmith_index_u32(0u, 28u)], var_0.e.a.a.x, u_input.a.x, -1i)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-25405i, u_input.a.x, 27318i, 31355i), vec4<i32>(-3725i, -2147483647i, var_0.e.a.c.x, -1i), global1.c.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -584f)), u_input.b.x > 3410u), u_input.a.xx));
    let var_2 = var_0.e.c;
    var var_3 = vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(var_2.c.wzw, ~abs(var_0.d.c.zzz));
    return 48275u;
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = global1.a.e;
    global0 = ~u_input.b;
    global0 = _wgslsmith_mod_vec4_u32(max(min(vec4<u32>(~global0.x, ~global0.x, func_2(976f, u_input.b.zx, vec4<bool>(false, true, true, global1.a.e)), 1u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 66370u, 4294967295u), u_input.b)), vec4<u32>(global0.x, 43991u, ~73793u, abs(global0.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(3336u, 4294967295u, u_input.b.x, global0.x), u_input.b) % vec4<u32>(32u))), reverseBits(u_input.b) << (vec4<u32>(firstTrailingBit(1u), 0u, global0.x, u_input.c & 57972u) % vec4<u32>(32u)));
    var var_1 = global1.a;
    let var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, arg_0, reverseBits(~(i32(-1i) * -2147483647i))), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.c.x, -reverseBits(-39749i), 1i), _wgslsmith_mult_vec3_i32(-vec3<i32>(global1.a.a.x, -1i, -24011i) & _wgslsmith_mult_vec3_i32(global1.c.c.wyy, vec3<i32>(1i, -61480i, 2147483647i)), global1.c.c.wzx)));
    return true;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> bool {
    let var_0 = global1.c;
    let var_1 = countOneBits(arg_0.a.c.x);
    return all(vec3<bool>(!(arg_0.c.e & true), var_0.e, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(global1.d.x >> (~u_input.b.x % 32u), u_input.a.x), global2[_wgslsmith_index_u32(~u_input.b.x << ((0u >> (1u % 32u)) % 32u), 28u)] >> (u_input.c % 32u)), firstTrailingBit(~_wgslsmith_sub_i32(u_input.a.x >> (35494u % 32u), global2[_wgslsmith_index_u32(1u, 28u)] >> (global0.x % 32u))), u_input.a.x & _wgslsmith_div_i32(~min(28107i, global1.d.x), u_input.a.x));
    let var_1 = vec3<bool>(!(func_1(-1i) & false) || !func_3(Struct_2(Struct_1(vec2<i32>(global1.c.a.x, 22522i), vec2<f32>(global1.a.d, -595f), vec4<i32>(u_input.a.x, global2[_wgslsmith_index_u32(global0.x, 28u)], var_0.x, -2147483647i), global1.b, global1.c.e), 791f, global1.c, u_input.a.yz), -vec3<i32>(var_0.x, -1i, 1i)), !(~global0.x != ~global0.x) && false, true);
    var var_2 = Struct_5(firstLeadingBit(u_input.b.x) ^ ~1u, global1.c);
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(810f, 2338f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.b))), _wgslsmith_div_f32(-509f, var_2.b.d)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a.b.x))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.d) + _wgslsmith_f_op_f32(ceil(var_2.b.d))), -195f)))));
    var var_4 = true;
    let var_5 = Struct_3(59197u, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.c, 1u), select(abs(global0.xz), u_input.b.xy, select(var_1.xy, var_1.yx, var_1.yx))), countOneBits((u_input.b.x >> (21992u % 32u)) ^ var_2.a)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_2.b.d, var_2.b.d, 1003f) * vec4<f32>(-688f, var_2.b.d, 318f, -756f)) + vec4<f32>(-281f, -106f, global1.a.d, -159f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, 661f, 1096f, 830f) * var_3)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3)))), Struct_1(u_input.a.xx, vec2<f32>(var_2.b.d, global1.b), _wgslsmith_clamp_vec4_i32(~vec4<i32>(var_2.b.c.x, -1i, u_input.a.x, 1i), global1.c.c >> (vec4<u32>(u_input.b.x, var_2.a, 4294967295u, 35639u) % vec4<u32>(32u)), -global1.a.c), 1000f, var_2.b.e));
    let var_6 = var_2.b.c.xyy;
    var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.b, var_3.yy, global1.a.b, _wgslsmith_mult_vec4_u32(~(~(u_input.b << (u_input.b % vec4<u32>(32u)))), select(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, var_2.a, 94419u, var_2.a), u_input.b | vec4<u32>(10063u, var_2.a, global0.x, 0u)), abs(u_input.b), !vec4<bool>(true, global1.c.e, false, true))));
}

