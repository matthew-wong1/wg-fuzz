struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<f32, 10>;

var<private> global2: array<u32, 29>;

var<private> global3: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(27657u, 10u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(17096u, 10u)]))))), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1[_wgslsmith_index_u32(arg_1.x, 10u)], 1000f))), vec2<f32>(arg_3.c, 1876f), any(vec3<bool>(arg_2.x, true, arg_2.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-227f, global1[_wgslsmith_index_u32(19977u, 10u)]) + vec2<f32>(global1[_wgslsmith_index_u32(global0.x, 10u)], 1000f)))))), arg_3);
    let var_1 = var_0.c.b.yy & vec2<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.d.x, 107554u, 1u, 4294967295u), u_input.a) & (global0.x << (27895u % 32u)), var_0.c.d.x));
    let var_2 = var_0.a;
    var_0 = Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(146f)))), global1[_wgslsmith_index_u32(countOneBits(global0.x), 10u)])), Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1[_wgslsmith_index_u32(global0.x, 10u)], -1120f), vec2<f32>(653f, _wgslsmith_f_op_f32(exp2(arg_3.c)))))), arg_3);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_2.a));
    return _wgslsmith_f_op_f32(f32(-1f) * -728f);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_2, arg_3: vec4<i32>) -> vec2<bool> {
    let var_0 = !(min(~1u, _wgslsmith_add_u32(~global0.x, global0.x << (u_input.b.x % 32u))) == 60600u);
    var var_1 = Struct_3(Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(var_0, vec3<u32>(1u, global0.x, arg_2.b.x), vec4<bool>(global3.x, var_0, true, true), Struct_2(global0.x, vec3<u32>(arg_2.b.x, arg_2.b.x, 21169u), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(99491u, 29u)], 10u)], u_input.b.ww, -1i))), -951f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-924f, global1[_wgslsmith_index_u32(0u, 10u)])) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(0u, 10u)], -1617f)))))), Struct_1(vec2<f32>(687f, 1871f)), Struct_2(reverseBits(_wgslsmith_clamp_u32(global0.x, 0u, u_input.a.x)) << (34920u % 32u), ~(~(~u_input.a.yyy)), -335f, vec2<u32>(_wgslsmith_mult_u32(0u, ~u_input.b.x), arg_2.a), reverseBits(_wgslsmith_add_i32(63472i, arg_3.x)) >> (_wgslsmith_dot_vec2_u32(global0.zz, arg_2.d) % 32u)));
    let var_2 = arg_2;
    let var_3 = Struct_3(var_1.a, var_1.b, arg_2);
    global2 = array<u32, 29>();
    return select(!vec2<bool>(true & (true & global3.x), -var_2.e != -1i), vec2<bool>(true, false), !vec2<bool>(all(vec2<bool>(global3.x, var_0)), false));
}

fn func_2(arg_0: vec4<f32>) -> vec3<bool> {
    let var_0 = select(!(!func_4(~global2[_wgslsmith_index_u32(global0.x, 29u)], _wgslsmith_f_op_f32(func_3(global3.x, u_input.b.xww, vec4<bool>(global3.x, true, false, global3.x), Struct_2(u_input.a.x, u_input.a.wzy, arg_0.x, vec2<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 29u)], global0.x), 1i))), Struct_2(u_input.a.x, vec3<u32>(27239u, global2[_wgslsmith_index_u32(global0.x, 29u)], global0.x), global1[_wgslsmith_index_u32(global0.x, 10u)], vec2<u32>(global0.x, global0.x), 2147483647i), reverseBits(vec4<i32>(1i, 28746i, 48555i, 0i)))), select(select(select(vec2<bool>(true, true), !vec2<bool>(global3.x, false), true), vec2<bool>(true, 0u <= u_input.b.x), !select(vec2<bool>(true, global3.x), vec2<bool>(global3.x, true), vec2<bool>(true, true))), select(func_4(11940u, arg_0.x, Struct_2(1u, u_input.a.yyw, 1369f, vec2<u32>(u_input.a.x, u_input.b.x), 8228i), select(vec4<i32>(-2147483647i, -1i, 20727i, -22235i), vec4<i32>(-2147483647i, 1i, 0i, -13852i), true)), select(select(vec2<bool>(global3.x, global3.x), vec2<bool>(true, global3.x), global3.x), vec2<bool>(global3.x, true), !vec2<bool>(true, global3.x)), false), true), global3.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-387f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(global3.x, ~u_input.a.xyz, !vec4<bool>(var_0.x, true, true, global3.x), Struct_2(23555u, vec3<u32>(global0.x, global2[_wgslsmith_index_u32(global0.x, 29u)], global0.x), global1[_wgslsmith_index_u32(u_input.a.x, 10u)], vec2<u32>(global2[_wgslsmith_index_u32(global0.x, 29u)], 4294967295u), 15411i))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1180f, global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(reverseBits(u_input.b.yw), _wgslsmith_clamp_vec2_u32(u_input.a.xx, global0.yx, vec2<u32>(1u, 0u)))), 10u)])));
    global2 = array<u32, 29>();
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zy)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1400f, 1490f))))))));
    return select(!select(!(!vec3<bool>(true, false, global3.x)), !(!vec3<bool>(false, var_0.x, false)), !(!vec3<bool>(false, var_0.x, false))), !(!(!select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, false, true), global3.x))), global3.x);
}

fn func_5(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    return Struct_2(~28651u, u_input.b.yzw, _wgslsmith_f_op_f32(min(-613f, 111f)), ~_wgslsmith_div_vec2_u32(vec2<u32>(~global0.x, global0.x), u_input.a.xy), 2147483647i);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = ~(~(-(vec2<i32>(-1i, 28859i) ^ (vec2<i32>(arg_1.e, arg_1.e) | vec2<i32>(-1i, -22706i)))));
    global3 = vec2<bool>(any(!select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(true, global3.x, global3.x), vec3<bool>(global3.x, false, global3.x))) && false, false);
    var var_1 = func_5(~arg_1.b, reverseBits(arg_1.e), arg_0, all(func_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(arg_1.d.x, 10u)], 1520f, arg_1.c, -1000f))))));
    let var_2 = -1440f;
    var var_3 = any(select(!(!vec3<bool>(global3.x, true, global3.x)), vec3<bool>(global3.x, any(select(vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, true), vec2<bool>(global3.x, global3.x))), global3.x), !(true | global3.x)));
    return (~(~(arg_1.b ^ vec3<u32>(u_input.b.x, 4294967295u, global2[_wgslsmith_index_u32(43027u, 29u)]))) >> ((vec3<u32>(64989u, ~global0.x, arg_1.b.x) << (var_1.b % vec3<u32>(32u))) % vec3<u32>(32u))) << (vec3<u32>(countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.x, 18019u, global2[_wgslsmith_index_u32(4294967295u, 29u)]), arg_1.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(~global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(1u, 29u)], var_1.a >> (arg_1.d.x % 32u), 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, global0.x, 0u, var_1.b.x), _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(1u, global0.x, arg_1.b.x, 41112u), vec4<u32>(4294967295u, u_input.b.x, var_1.b.x, 95375u)))), ~(~0u)) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = (~u_input.a.zyx >> ((u_input.b.zzy >> (func_1(Struct_1(vec2<f32>(1000f, -552f)), Struct_2(global0.x, u_input.b.zzw, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 29u)], 10u)], global0.xz, 17005i)) % vec3<u32>(32u))) % vec3<u32>(32u))) >> (u_input.a.yyy % vec3<u32>(32u));
    var var_0 = false;
    let var_1 = !func_2(vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global0.x, 29u)], 4294967295u), min(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], global0.x), vec2<u32>(1u, 0u))), 10u)], global1[_wgslsmith_index_u32(~(~46752u), 10u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(global0.x, 10u)]))), -298f)).yx;
    global2 = array<u32, 29>();
    global0 = u_input.b.wyw;
    global2 = array<u32, 29>();
    var var_2 = select(vec4<bool>(all(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(1782f, -734f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], -347f, global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(u_input.a.x, 10u)])))), any(vec3<bool>(false, !var_1.x, !var_1.x)), var_1.x, true), !vec4<bool>(false, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 10u)] + global1[_wgslsmith_index_u32(global0.x, 10u)]) > _wgslsmith_f_op_f32(-349f + -666f), any(vec4<bool>(false, var_1.x, var_1.x, false)), global3.x), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(1u, 388u << (0u % 32u)), _wgslsmith_clamp_u32(~1u, _wgslsmith_dot_vec4_u32(u_input.a >> (u_input.b % vec4<u32>(32u)), vec4<u32>(53392u, 4294967295u, u_input.b.x, 0u)), ~(~global2[_wgslsmith_index_u32(u_input.a.x, 29u)]))), ~_wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(29298u, 0u, 4294967295u, 0u), vec4<u32>(37803u, 0u, 0u, global0.x)), u_input.a & ~vec4<u32>(u_input.a.x, global2[_wgslsmith_index_u32(23843u, 29u)], 37546u, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.x, 10u)] - -1931f), _wgslsmith_f_op_f32(step(1051f, 510f)), !var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-874f + -869f)), _wgslsmith_f_op_f32(select(-616f, -1011f, false)))));
}

