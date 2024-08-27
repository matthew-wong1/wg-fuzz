struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(17781i, 0i), vec2<i32>(-16333i, 43165i), vec2<i32>(i32(-2147483648), 4799i), vec2<i32>(29690i, 1i), vec2<i32>(0i, 1i), vec2<i32>(32945i, 0i), vec2<i32>(0i, -2548i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(40372i, -54164i), vec2<i32>(24842i, 2147483647i), vec2<i32>(-68162i, -1i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(69107i, 17058i), vec2<i32>(-9085i, -1i), vec2<i32>(12902i, 1i), vec2<i32>(29166i, 48525i), vec2<i32>(-8548i, -1i), vec2<i32>(9999i, 53881i), vec2<i32>(-40589i, -3044i), vec2<i32>(2147483647i, 0i), vec2<i32>(-28630i, i32(-2147483648)), vec2<i32>(2147483647i, -45449i), vec2<i32>(-1502i, 74134i), vec2<i32>(-5314i, 0i), vec2<i32>(13304i, 0i), vec2<i32>(71572i, 38823i), vec2<i32>(0i, 2147483647i), vec2<i32>(-1731i, 41874i), vec2<i32>(0i, 26299i));

var<private> global1: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(vec3<i32>(-32754i, 1i, 9670i), 929f, -820f, true), Struct_4(vec3<i32>(-19972i, -1i, 25633i), 462f, 416f, true), Struct_4(vec3<i32>(-22225i, i32(-2147483648), -1i), 1833f, -1321f, false), Struct_4(vec3<i32>(-14972i, 1i, i32(-2147483648)), 1949f, 1710f, false), Struct_4(vec3<i32>(-1i, 0i, 2147483647i), -511f, -273f, true), Struct_4(vec3<i32>(1i, -43267i, -1i), 715f, -377f, false), Struct_4(vec3<i32>(2147483647i, 1i, i32(-2147483648)), -1000f, 343f, false), Struct_4(vec3<i32>(53535i, 1i, 21436i), 1206f, 1295f, false), Struct_4(vec3<i32>(-34994i, 65935i, 23352i), 972f, 151f, false), Struct_4(vec3<i32>(i32(-2147483648), 27118i, 1i), -1000f, -1000f, true), Struct_4(vec3<i32>(1i, -11437i, 2147483647i), 689f, 898f, true), Struct_4(vec3<i32>(2147483647i, 9703i, 18i), 588f, 1073f, false), Struct_4(vec3<i32>(0i, i32(-2147483648), 2147483647i), 506f, 551f, false), Struct_4(vec3<i32>(18677i, 2147483647i, 0i), 1231f, 157f, true), Struct_4(vec3<i32>(0i, -28739i, -37536i), -1009f, 1276f, true), Struct_4(vec3<i32>(-1i, 1i, 1i), 1201f, -889f, true), Struct_4(vec3<i32>(-1i, i32(-2147483648), -11573i), -1000f, 397f, false), Struct_4(vec3<i32>(48079i, 42990i, 2147483647i), 242f, 344f, true), Struct_4(vec3<i32>(0i, i32(-2147483648), 5872i), 933f, 474f, false), Struct_4(vec3<i32>(1i, 12583i, 31525i), 154f, 357f, false), Struct_4(vec3<i32>(-5733i, -1i, -3793i), 374f, 388f, false), Struct_4(vec3<i32>(-1i, 1921i, 1i), 148f, 192f, false), Struct_4(vec3<i32>(0i, 2147483647i, -5473i), -344f, 523f, true), Struct_4(vec3<i32>(-1i, 1i, 2147483647i), 679f, -1332f, true), Struct_4(vec3<i32>(-1i, 0i, -1i), -668f, 1024f, true), Struct_4(vec3<i32>(i32(-2147483648), -3301i, -1i), -1142f, 178f, false), Struct_4(vec3<i32>(-30578i, 1i, 11263i), -1063f, -106f, true), Struct_4(vec3<i32>(28543i, 2147483647i, -6365i), -1060f, 946f, false), Struct_4(vec3<i32>(29906i, 0i, 7997i), -1419f, -541f, true));

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: vec3<u32>;

var<private> global4: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> f32 {
    let var_0 = select(select(!vec2<bool>(arg_1.a, true), select(vec2<bool>(true, true), vec2<bool>(arg_1.a, !arg_1.a), vec2<bool>(true, global2.x)), true), !vec2<bool>(global2.x, global2.x), global2.x);
    let var_1 = var_0.x;
    let var_2 = -(vec3<i32>(-_wgslsmith_dot_vec4_i32(arg_1.b, arg_1.b), i32(-1i) * -arg_1.b.x, -arg_2.c.a.x) >> (reverseBits(countOneBits(~vec3<u32>(1u, 51750u, 22239u))) % vec3<u32>(32u)));
    global3 = countOneBits(vec3<u32>(_wgslsmith_div_u32(min(u_input.b.x, arg_2.d) & global3.x, 0u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_1.c, arg_2.d) << (vec2<u32>(global3.x, 65929u) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(arg_2.d, global3.x), global3.xz), any(vec4<bool>(true, arg_1.a, false, true))), u_input.b.yy), 53814u));
    global3 = u_input.b.xxz;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_2.b.x)), arg_2.b.x)))))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1033f + -1332f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(505f + 672f) - 771f), -822f)))));
    let var_1 = Struct_5(Struct_2(1i, vec4<f32>(var_0, 766f, _wgslsmith_f_op_f32(func_3(arg_1, Struct_3(global2.x, vec4<i32>(2147483647i, arg_1.a.x, -1i, 2147483647i), u_input.b.x), Struct_2(arg_0, vec4<f32>(var_0, var_0, var_0, 589f), arg_1, 52953u))), 289f), Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(2811i, -26021i) & vec2<i32>(arg_1.a.x, 0i), max(vec2<i32>(58625i, u_input.a.x), vec2<i32>(arg_1.a.x, arg_0)))), reverseBits(_wgslsmith_add_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)))), ~vec3<i32>(firstLeadingBit(arg_0), firstLeadingBit(-8474i), 37121i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1080f, 966f, 1985f) + vec3<f32>(-670f, 768f, var_0))))));
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), 740f), var_0), -742f) - vec2<f32>(var_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a.b.x + 140f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x + var_0) - _wgslsmith_div_f32(-1485f, var_1.c.x))))));
    global1 = array<Struct_4, 29>();
    return !(!(global2.x | any(!global4[_wgslsmith_index_u32(0u, 22u)])));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_5) -> Struct_4 {
    global0 = array<vec2<i32>, 30>();
    global3 = u_input.b.wxx;
    var var_0 = vec2<i32>(0i, ~abs(firstTrailingBit(2147483647i)));
    let var_1 = -6996i;
    global4 = array<vec3<bool>, 22>();
    return global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.b.x, abs(~u_input.b.x)), 29u)];
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> vec2<f32> {
    global4 = array<vec3<bool>, 22>();
    global3 = vec3<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d, global3.x, u_input.b.x), vec3<u32>(1u, u_input.b.x, global3.x)), 4294967295u) | select(u_input.b.wzw, vec3<u32>(abs(1u), _wgslsmith_mod_u32(4294967295u, u_input.b.x) >> ((0u | arg_0.d) % 32u), (arg_0.d >> (global3.x % 32u)) | u_input.b.x), vec3<bool>(all(vec3<bool>(true, true, global2.x)), true, !any(vec3<bool>(true, true, global2.x))));
    let var_0 = !(!vec4<bool>(global2.x, global2.x, u_input.b.x > 1u, true));
    let var_1 = _wgslsmith_mult_i32(~arg_0.a, _wgslsmith_dot_vec3_i32(~(-(vec3<i32>(arg_1.a.x, arg_0.c.a.x, 22060i) | vec3<i32>(66889i, arg_0.a, arg_0.c.a.x))), _wgslsmith_mod_vec3_i32(vec3<i32>(-arg_0.a, -1i, -arg_0.c.a.x), vec3<i32>(select(10393i, 36086i, global2.x), arg_0.a, firstLeadingBit(1i)))));
    var var_2 = func_4(!((true || func_2(-22858i, Struct_1(vec2<i32>(-6019i, u_input.a.x)))) & true), Struct_1(vec2<i32>(~(-u_input.a.x), ~(i32(-1i) * -13394i))), Struct_5(Struct_2(2147483647i, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-301f, -897f, 2011f, -147f))), arg_1, arg_0.d), vec3<i32>(reverseBits(0i), max(var_1, ~arg_0.c.a.x), firstTrailingBit(abs(arg_1.a.x))), arg_0.b.zww));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_0.b.xx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-934f, var_2.c))))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, 379f)));
}

fn func_5(arg_0: vec2<f32>) -> StorageBuffer {
    let var_0 = arg_0.x;
    let var_1 = !global2.x && !any(select(select(global4[_wgslsmith_index_u32(30233u, 22u)], vec3<bool>(false, global2.x, false), global4[_wgslsmith_index_u32(33401u, 22u)]), vec3<bool>(true, true, true), global2.x));
    global3 = ~vec3<u32>(19425u, u_input.b.x, u_input.b.x);
    global1 = array<Struct_4, 29>();
    let var_2 = 1u;
    return StorageBuffer(vec3<i32>(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(-1i, 16999i, 13856i))), u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 61516i) | u_input.a, abs(vec2<i32>(-44957i, u_input.a.x) ^ u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, var_0, 868f))))))), abs(i32(-1i) * -u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1033f, 268f, var_0) + vec3<f32>(-418f, arg_0.x, arg_0.x)))) - vec3<f32>(_wgslsmith_f_op_f32(-189f * -2386f), _wgslsmith_f_op_f32(select(var_0, arg_0.x, true)), _wgslsmith_f_op_f32(arg_0.x * -576f)))), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(2147483647i, u_input.a.x) << (_wgslsmith_add_u32(global3.x, ~4294967295u) % 32u));
    var var_1 = -71027i;
    global0 = array<vec2<i32>, 30>();
    let var_2 = vec3<bool>(global2.x, true, !(!(!global2.x)));
    var var_3 = -vec3<i32>(var_0, -23947i, -1i);
    var var_4 = ~(-1i);
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_2(-47078i, vec4<f32>(888f, -542f, 858f, 1127f), Struct_1(var_3.xz), 1u), Struct_1(vec2<i32>(-41725i, -8229i))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1869f, 1079f)))));
}

