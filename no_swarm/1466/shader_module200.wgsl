struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<f32> = vec3<f32>(-367f, 1182f, -1357f);

var<private> global2: array<Struct_1, 14>;

var<private> global3: array<f32, 32> = array<f32, 32>(-666f, 1176f, 567f, 669f, -849f, -644f, 597f, -353f, -844f, -1167f, -837f, -860f, 2955f, -1038f, -1681f, 1031f, 1536f, 454f, 510f, 3000f, -429f, 1161f, 1557f, 1000f, 461f, 812f, -1073f, 189f, 780f, 1848f, -403f, 1000f);

var<private> global4: array<Struct_2, 9>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-arg_2.xz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-268f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-123f))))) * 878f));
    global3 = array<f32, 32>();
    let var_1 = 48471u;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1293f, _wgslsmith_f_op_f32(floor(-930f)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-176f, _wgslsmith_f_op_f32(836f - _wgslsmith_f_op_f32(arg_0.x * global3[_wgslsmith_index_u32(24508u, 32u)])))), _wgslsmith_f_op_f32(ceil(-284f)))));
    var var_3 = arg_3.c << (vec4<u32>(var_1, min(~32858u, var_1), var_1 | abs(~4294967295u), var_1) % vec4<u32>(32u));
    return 93625u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    global4 = array<Struct_2, 9>();
    var var_0 = global2[_wgslsmith_index_u32(1u >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(func_3(vec4<f32>(arg_0.b.x, global0.b, -199f, -555f), Struct_2(arg_0.b.zw, global1.x), arg_0.b, Struct_1(12877u, vec4<f32>(598f, -383f, global3[_wgslsmith_index_u32(u_input.c.x, 32u)], 846f), vec4<i32>(-4032i, arg_1.c.x, 42506i, -22586i))), ~43546u, ~arg_1.a), _wgslsmith_mod_vec3_u32(u_input.c.wyy, vec3<u32>(1u, 1u, arg_1.a)) & abs(u_input.c.ywz)), 18099u | ~_wgslsmith_div_u32(17209u, arg_0.a)) % 32u), 14u)];
    var_0 = Struct_1((~u_input.c.x | _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.c.zy, u_input.c.xx), u_input.c.x, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(arg_1.a, 0u, u_input.c.x, 22175u)))) << (var_0.a % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, -1000f, global3[_wgslsmith_index_u32(9234u, 32u)], 1970f)) * var_0.b) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -247f), _wgslsmith_f_op_f32(global1.x + 889f), -769f, 754f)) + vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), -415f, _wgslsmith_f_op_f32(-2111f * _wgslsmith_f_op_f32(f32(-1f) * -793f)), _wgslsmith_f_op_f32(f32(-1f) * -673f))), max(arg_0.c, ~var_0.c));
    let var_1 = arg_1.a << (~_wgslsmith_sub_u32(63805u, select(~var_0.a, ~22317u, all(vec3<bool>(false, true, false)))) % 32u);
    let var_2 = !vec3<bool>(false, any(vec4<bool>(true, true, true, true)), !all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))));
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(1i ^ -arg_0.c.x, 0i, -55872i, ~arg_0.c.x), vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_1.c.xx & u_input.d.xy, min(vec2<i32>(1i, arg_0.c.x), var_0.c.xx), _wgslsmith_mult_vec2_i32(arg_1.c.zw, vec2<i32>(u_input.d.x, var_0.c.x))), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0.c.x, 23828i), ~vec2<i32>(u_input.b, arg_0.c.x))), -min(firstTrailingBit(1i), arg_0.c.x), arg_1.c.x), arg_1.c);
}

fn func_1() -> Struct_2 {
    let var_0 = global4[_wgslsmith_index_u32(~(~1u), 9u)];
    var var_1 = max(vec4<i32>(reverseBits(u_input.a), i32(-1i) * -_wgslsmith_mult_i32(-2147483647i, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.d.x, countOneBits(u_input.b), u_input.d.x >> (u_input.c.x % 32u)), vec4<i32>(u_input.d.x, ~u_input.b, 53652i, -1i)), -1i), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(2147483647i, u_input.b, u_input.a, 34913i)), firstLeadingBit(vec4<i32>(-1i, u_input.b, u_input.a, u_input.b))), select(select(vec4<i32>(u_input.d.x, 7517i, u_input.d.x, 2147483647i), vec4<i32>(u_input.b, 24338i, u_input.a, 11708i), true), reverseBits(vec4<i32>(2147483647i, -1i, 2147483647i, 2147483647i)), false), select(func_2(global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(u_input.c.x, 14u)]), ~vec4<i32>(-12977i, -2147483647i, u_input.d.x, 2147483647i), u_input.c.x >= 1u)) | vec4<i32>(select(max(u_input.b, 32041i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), u_input.d.yy), true), 1i, 49087i, select(firstTrailingBit(u_input.a), u_input.d.x >> (u_input.c.x % 32u), false)));
    global3 = array<f32, 32>();
    global2 = array<Struct_1, 14>();
    let var_2 = select(!(!vec4<bool>(true, true, any(vec2<bool>(true, true)), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), false)), select(true, true, true) || false, true, true), !vec4<bool>(any(vec3<bool>(true, true, true)), true, all(vec4<bool>(false, true, true, true)), all(vec2<bool>(true, true)))), all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true))), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false)))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(u_input.c.x, 32u)], global1.x)))) - global0.a), _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -536f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-482f - 118f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x - 1284f) * 1087f))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global1.xz))), _wgslsmith_f_op_f32(ceil(1000f)));
    var var_2 = func_1();
    var var_3 = Struct_2(var_1.a, _wgslsmith_f_op_f32(max(global0.a.x, 533f)));
    global2 = array<Struct_1, 14>();
    let var_4 = u_input.d.x >= _wgslsmith_mult_i32(-2147483647i, -_wgslsmith_sub_i32(select(u_input.d.x, 2147483647i, false), ~u_input.b));
    let var_5 = ~u_input.c.zx;
    var var_6 = _wgslsmith_f_op_f32(min(272f, global0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(1i), 1i);
}

