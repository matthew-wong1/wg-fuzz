struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 3> = array<u32, 3>(4294967295u, 46387u, 4294967295u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.a.x, 149f))), -1357f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.b.a.x))), global0.b.a.x)))));
    var var_1 = Struct_5(Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.b.a.x, 1649f)))), vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1066f)), !global0.e.xz)), Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.b.a.x, 1758f))))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.b.b.x, 3u)], 3u)], u_input.c), vec3<u32>(4294967295u, 16583u, 4294967295u)), global0.b.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-194f, -442f), vec2<f32>(2521f, var_0.x))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -925f)) - _wgslsmith_div_vec2_f32(global0.c, vec2<f32>(global0.b.a.x, var_0.x)))), _wgslsmith_sub_i32(global0.d, -global0.d), select(global0.e, vec4<bool>(true, -660f >= global0.a.x, true, global0.e.x & true), select(!global0.e, global0.e, global0.e))), min(-(~global0.d) >> ((30041u ^ abs(global0.b.b.x)) % 32u), _wgslsmith_clamp_i32(u_input.b.x, reverseBits(u_input.b.x), ~global0.d)), Struct_4(select(vec4<bool>(all(global0.e), false, global0.e.x, any(vec2<bool>(global0.e.x, global0.e.x))), select(!vec4<bool>(false, true, global0.e.x, global0.e.x), vec4<bool>(false, global0.e.x, global0.e.x, global0.e.x), select(global0.e, vec4<bool>(false, global0.e.x, true, true), global0.e.x)), vec4<bool>(true, -199f == global0.c.x, true, global0.e.x)), firstLeadingBit(vec4<i32>(-1i) * -u_input.b)));
    global0 = var_1.a;
    var_1 = Struct_5(var_1.a, _wgslsmith_dot_vec4_i32(min(~var_1.c.b, vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.c.b.wy, vec2<i32>(u_input.b.x, u_input.a)), ~27685i, ~var_1.b, 43975i)), vec4<i32>(-1i, abs(~u_input.a), 26265i, global0.d)), Struct_4(!var_1.a.e, u_input.b));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.b.a.x - var_1.a.b.a.x), var_0.x)))), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(min(u_input.c, u_input.c), u_input.c), (global0.b.b.x & 1u) ^ (4294967295u & global0.b.b.x)), ~abs(1u)));
    return 1u;
}

fn func_2(arg_0: u32) -> vec3<i32> {
    let var_0 = false;
    var var_1 = !any(!select(!global0.e.xw, global0.e.wy, select(global0.e.xx, global0.e.xw, vec2<bool>(true, var_0))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -526f), -1229f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.a.x) * 547f))), 1392f);
    let var_3 = _wgslsmith_f_op_f32(-global0.b.a.x);
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(min(var_2.ww, var_2.yy)), vec2<u32>(1u >> (func_3() % 32u), min(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 4294967295u, 6519u), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 3u)], 3u)], u_input.c)), ~global0.b.b.x)));
    return (-(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, global0.d), u_input.b.wyw)) | (abs(vec3<i32>(-34749i, 2147483647i, u_input.b.x)) >> (~vec3<u32>(global0.b.b.x, 41043u, arg_0) % vec3<u32>(32u)))) & vec3<i32>(min(u_input.b.x, global0.d), ~(~(u_input.a & -38522i)), u_input.b.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: f32) -> i32 {
    let var_0 = !(!global0.e.x);
    let var_1 = global0.b;
    var var_2 = ~u_input.c << (arg_1.x % 32u);
    var_2 = max(4294967295u, 1u);
    let var_3 = Struct_3(u_input.b.x, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, var_1.a.x) + _wgslsmith_f_op_vec2_f32(max(global0.c, vec2<f32>(arg_2.a.x, 2407f))))), global0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.a, vec2<f32>(arg_3, arg_2.a.x), false)))), arg_0.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.x, var_1.b.x, 4294967295u, 68446u) << (vec4<u32>(40658u, 0u, 0u, u_input.c) % vec4<u32>(32u)), countOneBits(vec4<u32>(var_1.b.x, arg_2.b.x, 18335u, u_input.c))) % 32u), select(global0.e, vec4<bool>(var_0, true, true, select(var_0, global0.e.x, var_0)), true)));
    return var_3.b.d;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_sub_i32(select(~(~(~u_input.b.x)), ~countOneBits(~u_input.a), global0.e.x), func_4(~func_2(~73966u), ~firstTrailingBit(vec3<u32>(69167u, global1[_wgslsmith_index_u32(4294967295u, 3u)], global0.b.b.x)) | abs(abs(vec3<u32>(103023u, global0.b.b.x, u_input.c))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(-338f, -1402f)), -229f), ~global0.b.b | _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.b.b.x, u_input.c), global0.b.b, vec2<u32>(45107u, global1[_wgslsmith_index_u32(13231u, 3u)]))), _wgslsmith_f_op_f32(-347f - 575f)));
    var var_1 = _wgslsmith_div_u32(55589u, global0.b.b.x);
    let var_2 = true;
    var var_3 = global0.d;
    var var_4 = true || global0.e.x;
    return Struct_2(_wgslsmith_f_op_vec2_f32(ceil(global0.a)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(global0.b.a, vec2<f32>(-1000f, -1121f))), global0.b.a)) * vec2<f32>(_wgslsmith_f_op_f32(min(global0.b.a.x, -941f)), _wgslsmith_f_op_f32(-global0.b.a.x))), ~(~global0.b.b)), global0.a, 48010i >> (~_wgslsmith_mod_u32(u_input.c, _wgslsmith_clamp_u32(u_input.c, global0.b.b.x, global1[_wgslsmith_index_u32(1u, 3u)])) % 32u), global0.e);
}

fn func_5(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_2) -> Struct_4 {
    let var_0 = arg_2;
    let var_1 = Struct_3(~_wgslsmith_mod_i32(-firstLeadingBit(global0.d), ~(-2716i | arg_2.d)), var_0);
    global1 = array<u32, 3>();
    var var_2 = var_0.d;
    global1 = array<u32, 3>();
    return Struct_4(!vec4<bool>(true & func_1(vec2<bool>(true, true), vec2<bool>(true, arg_2.e.x)).e.x, true, var_1.b.e.x, false), firstLeadingBit(u_input.b));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = !arg_0.a.wzw;
    let var_1 = 1u;
    global1 = array<u32, 3>();
    global0 = func_1(!vec2<bool>(true, any(arg_1.e.www)), vec2<bool>(true, global0.e.x));
    var var_2 = Struct_1(global0.a, global0.b.b);
    return arg_0.a.zz;
}

fn func_7(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = arg_2;
    let var_1 = func_5(var_0.b.e.yz, !(!any(var_0.b.e.zxw)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-155f, 813f)) + vec2<f32>(396f, _wgslsmith_f_op_f32(ceil(arg_2.b.a.x)))), arg_2.b.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.c.x), -399f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1412f, arg_2.b.c.x)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-180f, 1000f))))), arg_0, select(!(!vec4<bool>(var_0.b.e.x, var_0.b.e.x, arg_3.x, arg_2.b.e.x)), select(!vec4<bool>(global0.e.x, global0.e.x, false, false), arg_2.b.e, !global0.e.x), !global0.e)));
    let var_2 = arg_0;
    global1 = array<u32, 3>();
    let var_3 = ~(~global0.b.b);
    return Struct_3(min(_wgslsmith_div_i32(reverseBits(arg_1.x), 1i), countOneBits(abs(_wgslsmith_div_i32(0i, arg_0)))), func_1(vec2<bool>(arg_3.x, -1024f == _wgslsmith_f_op_f32(-global0.c.x)), vec2<bool>(true, !all(global0.e.yxx))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(u_input.c) ^ u_input.c;
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.b.a.x))), _wgslsmith_f_op_f32(global0.b.a.x * global0.b.a.x)));
    var var_2 = func_7(_wgslsmith_mod_i32(global0.d, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x) ^ u_input.a, _wgslsmith_clamp_i32(global0.d ^ 0i, -54790i, ~40803i))), u_input.b.zyw << (_wgslsmith_add_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], 1u, var_0) ^ vec3<u32>(global1[_wgslsmith_index_u32(global0.b.b.x, 3u)], global0.b.b.x, 95874u), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, u_input.c, 0u, global1[_wgslsmith_index_u32(4471u, 3u)]), vec4<u32>(1u, 1u, 45924u, 9239u)), abs(global1[_wgslsmith_index_u32(0u, 3u)]), 4294967295u)) % vec3<u32>(32u)), Struct_3(-(~global0.d), Struct_2(_wgslsmith_f_op_vec2_f32(-global0.a), global0.b, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2140f, global0.b.a.x)))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(global0.d, -1i), ~(-13937i)), select(global0.e, global0.e, all(global0.e.wzz)))), !func_6(func_5(!vec2<bool>(true, global0.e.x), true, func_1(global0.e.zx, global0.e.xx)), Struct_2(global0.a, func_1(global0.e.xy, global0.e.zx).b, global0.c, 1i, global0.e)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.a.x, 197f, global0.b.a.x) + vec3<f32>(-997f, global0.a.x, 588f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.b.b.a.x, -1822f, global0.c.x))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c.x, var_2.b.a.x, var_2.b.c.x), vec3<f32>(var_2.b.c.x, global0.b.a.x, 755f), global0.e.x)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1436f * -2081f), _wgslsmith_f_op_f32(var_2.b.c.x * var_2.b.a.x), -540f) + vec3<f32>(_wgslsmith_f_op_f32(-var_2.b.b.a.x), -1000f, _wgslsmith_f_op_f32(596f * -132f)))));
    var var_4 = !func_5(var_2.b.e.xy, !(func_1(var_2.b.e.yw, var_2.b.e.yx).d < global0.d), var_2.b).a.zzz;
    var var_5 = _wgslsmith_div_vec3_u32(abs(min(abs(abs(vec3<u32>(2286u, global0.b.b.x, var_0))), ~vec3<u32>(1u, var_0, 40898u) ^ vec3<u32>(global1[_wgslsmith_index_u32(global0.b.b.x, 3u)], u_input.c, 4366u))), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(29048u, 3u)], var_2.b.b.b.x, var_0), reverseBits(vec3<u32>(48178u, global1[_wgslsmith_index_u32(4294967295u, 3u)], 16677u)), firstLeadingBit(vec3<u32>(u_input.c, 4294967295u, 31415u) ^ vec3<u32>(u_input.c, var_2.b.b.b.x, 4294967295u))), min(firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(var_2.b.b.b.x, 3u)], 8257u, var_0)), select(vec3<u32>(11238u, u_input.c, 4294967295u), vec3<u32>(var_2.b.b.b.x, u_input.c, var_0), vec3<bool>(true, true, var_4.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x << (~func_7(u_input.b.x, vec3<i32>(var_2.a, 1i, global0.d), func_7(var_2.a, u_input.b.xwx, Struct_3(2147483647i, Struct_2(vec2<f32>(var_3.x, global0.c.x), global0.b, vec2<f32>(var_3.x, 226f), -39522i, var_2.b.e)), var_2.b.e.wy), !var_2.b.e.yz).b.b.b.x % 32u));
}

