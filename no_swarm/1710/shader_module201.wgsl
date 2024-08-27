struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(-515i, -6111i), vec2<i32>(11329i, 35629i));

var<private> global1: i32 = 25443i;

var<private> global2: vec2<f32> = vec2<f32>(461f, -164f);

var<private> global3: Struct_2;

var<private> global4: array<f32, 4> = array<f32, 4>(1248f, -156f, -943f, 1600f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_2(true, global3.b, global3.c);
    let var_1 = Struct_4(vec2<i32>(max(-28282i, select(1i, select(var_0.c.x, global3.b.b.x, true), global3.a || global3.a)), 2591i));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1479f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global2.x, 1183f)))))), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~countOneBits(vec4<u32>(1u, 1u, 34186u, 4294967295u))), vec4<u32>(~45589u << (countOneBits(u_input.d) % 32u), 4294967295u, 21786u, _wgslsmith_mod_u32(u_input.b.x, 4294967295u | u_input.b.x))), 4u)]));
    var var_3 = !global3.a;
    let var_4 = Struct_4(vec2<i32>(_wgslsmith_div_i32(max(1i, min(global3.b.b.x, 2147483647i)), -var_1.a.x << (4294967295u % 32u)), -(~1i)));
    return select(!(!vec4<bool>(true, 1i >= var_0.c.x, true, global3.a)), select(!(!select(vec4<bool>(false, false, global3.a, false), vec4<bool>(global3.a, true, true, false), vec4<bool>(false, var_0.a, true, false))), !(!vec4<bool>(var_0.a, false, false, global3.a)), vec4<bool>(global3.a, any(vec3<bool>(true, global3.a, true)) && var_0.a, true, !any(vec4<bool>(var_0.a, true, false, false)))), !vec4<bool>(global3.a, false, true, 0u == global3.b.c.x));
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = !func_3();
    var var_1 = select(reverseBits(vec3<i32>(15229i, _wgslsmith_add_i32(abs(arg_0), reverseBits(-7611i)), -arg_0)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(-(~vec3<i32>(global3.b.b.x, 0i, 1i)), reverseBits(global3.b.b.xxy) >> (countOneBits(global3.b.c) % vec3<u32>(32u))), global3.b.b.zzw), !var_0.zww);
    var var_2 = _wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, select(select(u_input.b, u_input.b, vec2<bool>(var_0.x, false)) | _wgslsmith_clamp_vec2_u32(global3.b.c.xx, vec2<u32>(1u, u_input.d), vec2<u32>(global3.b.c.x, u_input.b.x)), ~firstTrailingBit(vec2<u32>(4294967295u, u_input.d)), var_0.wz)), 4u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global2.x)), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, abs(1u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(8179u, 1u, 0u), global3.b.c), global3.b.c.x), 4u)], (1i > u_input.c) && all(select(var_0.ww, var_0.xz, global3.a))))));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(28519u, 4u)])), 1506f)), 1000f))), 1822f);
    let var_3 = Struct_4(vec2<i32>(-1i) * -min(var_1.zy, vec2<i32>(22321i, var_1.x)));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1111f), global4[_wgslsmith_index_u32(~u_input.b.x & _wgslsmith_sub_u32(59595u, 1u), 4u)]));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.d, 4u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~0u, 4u)] - -1000f), _wgslsmith_f_op_f32(floor(-1683f))) * 677f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.b.x, 4u)]))));
    var var_1 = 56258u;
    var_1 = arg_2.b.c.x;
    let var_2 = _wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(u_input.b.x, 4u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(arg_2.c.x)))) * 1005f)))));
    let var_3 = min(_wgslsmith_sub_i32(~_wgslsmith_mod_i32(select(0i, global3.c.x, global3.a), reverseBits(1i)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, 1i), -global3.c.yy, !arg_2.a), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global3.b.c, arg_2.b.c >> (arg_2.b.c % vec3<u32>(32u))), 2u)])), ~global3.c.x);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = min(vec4<u32>(u_input.b.x, ~144615u << (~_wgslsmith_add_u32(global3.b.c.x, u_input.b.x) % 32u), ~1u, global3.b.c.x), vec4<u32>(~select(~u_input.b.x, u_input.d, global2.x < -1598f), global3.b.c.x, global3.b.c.x, ~5708u));
    var var_2 = vec3<bool>(((func_1(global3.a, var_1.x, Struct_2(global3.a, Struct_1(-44511i, global3.b.b, vec3<u32>(58458u, 16747u, 58286u)), global3.c), global3.a) << (var_1.x % 32u)) > ~(~0i)) & (true | global3.a), u_input.c < _wgslsmith_mult_i32(1i, -1i), false);
    var var_3 = Struct_4(_wgslsmith_sub_vec2_i32(~global3.b.b.zw, ~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, global3.c.x), global0[_wgslsmith_index_u32(18619u, 2u)]) ^ vec2<i32>(1i, -11109i)));
    var var_4 = Struct_1(firstLeadingBit(func_1(false, 56051u, Struct_2(true, global3.b, global3.b.b), !(!global3.a))), abs(global3.c), global3.b.c);
    let var_5 = Struct_1(_wgslsmith_clamp_i32(18629i, var_3.a.x, max(~(~0i), _wgslsmith_mod_i32(~u_input.a, _wgslsmith_mult_i32(1i, 17462i)))), ~vec4<i32>(select(u_input.a, 0i, false), i32(-1i) * -46735i, global3.b.b.x, (-1i << (global3.b.c.x % 32u)) & -var_3.a.x), _wgslsmith_sub_vec3_u32(var_4.c | vec3<u32>(~4294967295u, ~54116u, u_input.d), var_4.c << (min(var_1.zyy, _wgslsmith_clamp_vec3_u32(var_1.xzx, vec3<u32>(var_4.c.x, 28225u, global3.b.c.x), vec3<u32>(24765u, 1u, 26179u))) % vec3<u32>(32u))));
    var var_6 = vec3<bool>(true, true, 1038f == _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1715f)) + _wgslsmith_f_op_f32(exp2(global2.x)))));
    var var_7 = -655f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(u_input.a, min(var_4.a | abs(-18703i), 2147483647i)), -global3.c.yxw);
}

