struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22>;

var<private> global1: i32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> vec2<bool> {
    global1 = 22371i;
    global1 = u_input.a.x;
    let var_0 = ~_wgslsmith_sub_i32(u_input.d, u_input.a.x);
    var var_1 = _wgslsmith_sub_vec2_u32(u_input.e.xz, _wgslsmith_add_vec2_u32((u_input.e.xx & select(u_input.e.xz, vec2<u32>(u_input.c, 0u), false)) ^ ~(vec2<u32>(2097u, 2891u) << (u_input.e.zy % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~(vec2<u32>(0u, 1u) >> (u_input.e.xz % vec2<u32>(32u))))));
    var var_2 = vec2<bool>(false, true);
    return !vec2<bool>((any(vec2<bool>(true, true)) & var_2.x) & any(select(vec3<bool>(true, global0[_wgslsmith_index_u32(4493u, 22u)], var_2.x), vec3<bool>(false, var_2.x, global0[_wgslsmith_index_u32(var_1.x, 22u)]), vec3<bool>(true, true, true))), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.e.zx, u_input.e.xy, u_input.e.xy), u_input.e.yx), 22u)]);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<f32>) -> vec4<u32> {
    global0 = array<bool, 22>();
    let var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    global1 = u_input.b;
    var var_1 = ~(~u_input.c);
    var var_2 = Struct_4(select(!(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(7594u, 22u)])), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 13561u, 59505u), vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x)), u_input.c, u_input.e.x & 19765u), 22u)], true, (u_input.e.x < 0u) == global0[_wgslsmith_index_u32(firstLeadingBit(u_input.e.x), 22u)]), select(!vec3<bool>(global0[_wgslsmith_index_u32(38946u, 22u)], global0[_wgslsmith_index_u32(u_input.c, 22u)], false), select(select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 22u)], true, global0[_wgslsmith_index_u32(4294967295u, 22u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 22u)], global0[_wgslsmith_index_u32(63024u, 22u)], global0[_wgslsmith_index_u32(u_input.e.x, 22u)]), vec3<bool>(global0[_wgslsmith_index_u32(20732u, 22u)], false, true)), vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(u_input.c, 22u)]), vec3<bool>(global0[_wgslsmith_index_u32(select(u_input.c, 1u, global0[_wgslsmith_index_u32(u_input.c, 22u)]), 22u)], global0[_wgslsmith_index_u32(abs(u_input.e.x), 22u)], any(vec2<bool>(global0[_wgslsmith_index_u32(11569u, 22u)], global0[_wgslsmith_index_u32(u_input.c, 22u)]))))), Struct_3(Struct_2(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 22u)], true, !global0[_wgslsmith_index_u32(u_input.c, 22u)], true), select(_wgslsmith_mod_i32(u_input.b, -5682i), u_input.a.x | -10545i, true))), global0[_wgslsmith_index_u32(u_input.c, 22u)], Struct_3(Struct_2(select(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(31999u, 22u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.e.x, 22u)], global0[_wgslsmith_index_u32(u_input.e.x, 22u)], false), global0[_wgslsmith_index_u32(~0u, 22u)]), -1i)));
    return ~max(firstLeadingBit(~vec4<u32>(38744u, 4294967295u, u_input.e.x, 5669u)), vec4<u32>(min(u_input.e.x >> (u_input.e.x % 32u), u_input.e.x), u_input.e.x, _wgslsmith_mult_u32(~u_input.c, abs(u_input.c)), ~5711u));
}

fn func_2() -> Struct_1 {
    var var_0 = -(~max(firstLeadingBit(~u_input.a.yx), (vec2<i32>(u_input.a.x, u_input.a.x) << (u_input.e.zx % vec2<u32>(32u))) >> (u_input.e.yx % vec2<u32>(32u))));
    let var_1 = -abs(u_input.b);
    let var_2 = Struct_1(max(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 8659i, 17473i, 2147483647i), firstTrailingBit(reverseBits(vec4<i32>(var_1, var_1, u_input.d, -1i)))), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, 2147483647i)), abs(~(-12437i)), u_input.e.yy, max(countOneBits(firstLeadingBit(vec4<u32>(u_input.c, u_input.c, 0u, u_input.c))), min(func_3(vec4<f32>(620f, -553f, 635f, -1000f), vec4<f32>(-872f, -2781f, 1596f, -1781f)), vec4<u32>(u_input.e.x, 4294967295u, 0u, u_input.c))) << (firstLeadingBit(vec4<u32>(17916u, 26644u, u_input.e.x, 4294967295u) << ((vec4<u32>(u_input.c, u_input.c, u_input.e.x, 29784u) & vec4<u32>(142540u, 1u, 0u, u_input.e.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), 4294967295u);
    var var_3 = vec4<bool>(global0[_wgslsmith_index_u32(0u, 22u)], true, false, false);
    global0 = array<bool, 22>();
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_i32(u_input.a.yy, u_input.a.yy);
    var_0 = u_input.a.xx >> (_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(u_input.e.xz, _wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, u_input.c), _wgslsmith_mult_vec2_u32(vec2<u32>(49439u, u_input.c), u_input.e.xx))), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.e.x, 4294967295u), select(vec2<u32>(u_input.c, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e.x, 15448u), u_input.e.zy), global0[_wgslsmith_index_u32(76394u, 22u)] & global0[_wgslsmith_index_u32(u_input.c, 22u)])), select(~_wgslsmith_add_vec2_u32(u_input.e.xx, u_input.e.xy), u_input.e.yx ^ vec2<u32>(u_input.c, u_input.c), func_1())) % vec2<u32>(32u));
    let var_1 = ~(~(0u << (1u % 32u)));
    let var_2 = func_2();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(944f * _wgslsmith_div_f32(435f, 471f))))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(688f + _wgslsmith_f_op_f32(sign(550f))))));
    var var_4 = !select(!(!(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 22u)], global0[_wgslsmith_index_u32(u_input.e.x, 22u)], global0[_wgslsmith_index_u32(1u, 22u)]))), !(!select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(var_1, 22u)], global0[_wgslsmith_index_u32(var_1, 22u)]), vec3<bool>(global0[_wgslsmith_index_u32(24439u, 22u)], true, global0[_wgslsmith_index_u32(var_1, 22u)]), false)), select(global0[_wgslsmith_index_u32(var_2.c.x, 22u)], !any(vec2<bool>(true, global0[_wgslsmith_index_u32(10346u, 22u)])), true));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec3<u32>(var_1, 4294967295u, 74486u))), -184f);
}

