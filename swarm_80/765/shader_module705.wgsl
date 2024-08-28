struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1>;

var<private> global1: u32 = 56107u;

var<private> global2: Struct_1;

var<private> global3: vec4<i32>;

var<private> global4: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    global3 = -(~vec4<i32>(_wgslsmith_dot_vec3_i32(global3.xxz, global3.zzz), -1i >> (1u % 32u), ~2147483647i, global3.x)) & -(~(vec4<i32>(-17801i, global3.x, global3.x, 1i) ^ vec4<i32>(0i, global3.x, global3.x, global3.x)) >> (vec4<u32>(select(5374u, arg_0.b.x, global4.x), arg_1.b.x, reverseBits(arg_0.b.x), ~arg_1.b.x) % vec4<u32>(32u)));
    global0 = array<vec3<u32>, 1>();
    let var_0 = arg_1;
    global4 = !vec3<bool>(!global4.x, global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -154f)) != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.a + -206f))));
    global2 = Struct_1(var_0.a, vec2<u32>(~4294967295u, global2.b.x));
    return select(global4.zy, global4.zy, global3.x >= -2147483647i);
}

fn func_4(arg_0: vec2<bool>) -> vec2<u32> {
    global2 = Struct_1(299f, vec2<u32>(countOneBits(17000u), u_input.a) << (_wgslsmith_div_vec2_u32(~(global2.b & vec2<u32>(global2.b.x, 1u)), ~reverseBits(vec2<u32>(1u, 87118u))) % vec2<u32>(32u)));
    let var_0 = i32(-1i) * -(global3.x << (0u % 32u));
    let var_1 = Struct_1(global2.a, vec2<u32>(_wgslsmith_mult_u32(9832u, u_input.a), ~global2.b.x));
    var var_2 = _wgslsmith_f_op_f32(-global2.a);
    let var_3 = global2.a;
    return firstTrailingBit(abs(reverseBits(abs(vec2<u32>(global2.b.x, u_input.a) | vec2<u32>(global2.b.x, global2.b.x)))));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(global2.a - -951f), _wgslsmith_sub_vec2_u32(global2.b, func_4(!func_3(Struct_1(2063f, vec2<u32>(global2.b.x, 0u)), Struct_1(387f, global2.b)))));
    let var_1 = var_0;
    return ~(~var_1.b.x);
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    var var_0 = 0u ^ _wgslsmith_clamp_u32(global2.b.x, abs(min(u_input.a, 16691u)), func_2() >> (abs(global2.b.x) % 32u));
    let var_1 = Struct_1(180f, _wgslsmith_mod_vec2_u32(func_4(select(global4.zy, !global4.zy, select(vec2<bool>(global4.x, false), vec2<bool>(global4.x, global4.x), true))), _wgslsmith_mod_vec2_u32(vec2<u32>(44250u & u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global2.b.x), vec2<u32>(global2.b.x, u_input.a))), func_4(select(global4.xx, vec2<bool>(global4.x, global4.x), vec2<bool>(global4.x, global4.x))))));
    var var_2 = false;
    var var_3 = Struct_1(340f, vec2<u32>(select(~4294967295u, 0u, global4.x) << (var_1.b.x % 32u), var_1.b.x));
    var var_4 = var_1;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(~vec4<u32>(~4294967295u, _wgslsmith_add_u32(24594u, global2.b.x), abs(global2.b.x), global2.b.x) & vec4<u32>(~func_1(vec3<i32>(0i, 1i, global3.x)), ~1u, 4294967295u, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u >> (global2.b.x % 32u), global2.b.x, ~0u, 1u) | vec4<u32>(global2.b.x & 1u, ~44018u, ~u_input.a, func_1(global3.xxz)), ~vec4<u32>(u_input.a >> (u_input.a % 32u), _wgslsmith_mult_u32(u_input.a, u_input.a), func_4(global4.xy).x, abs(u_input.a))));
    var var_1 = global3.zxy;
    var var_2 = !(!(!vec4<bool>(!global4.x, true, global4.x, global4.x | true)));
    var var_3 = var_1.x;
    let var_4 = ~vec3<i32>(1i, -52299i, -42403i);
    let var_5 = ~(vec2<i32>(_wgslsmith_sub_i32(global3.x, -12192i), _wgslsmith_mod_i32(var_1.x, _wgslsmith_dot_vec2_i32(var_1.xz, vec2<i32>(42071i, -1i)))) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 1i), select(vec2<i32>(var_4.x, var_4.x) | vec2<i32>(-2147483647i, var_1.x), -vec2<i32>(var_1.x, -21373i), global4.xy)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(var_4.x, min(var_1.x, var_4.x)), _wgslsmith_f_op_f32(-global2.a), min(_wgslsmith_mod_u32(select(1480u, firstTrailingBit(1u), var_2.x), _wgslsmith_mult_u32(~4294967295u, _wgslsmith_div_u32(global2.b.x, 11065u))), _wgslsmith_mod_u32(12697u, 4643u)), var_0.x);
}

