struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 1>;

var<private> global1: Struct_2;

var<private> global2: vec4<f32> = vec4<f32>(-1000f, -1168f, 793f, -891f);

var<private> global3: array<Struct_1, 9>;

var<private> global4: array<vec4<u32>, 13>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec3<f32>) -> u32 {
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a >> ((global1.d.x ^ u_input.b) % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 0u), ~global1.d.yx), 1u, u_input.b), select(vec4<u32>(global1.c.b.x | global1.d.x, 0u, abs(38215u), ~17411u), _wgslsmith_div_vec4_u32(global1.d, vec4<u32>(u_input.b, global1.a, global1.d.x, 0u)) ^ (vec4<u32>(4294967295u, global1.c.c.x, 47279u, u_input.b) & vec4<u32>(u_input.b, u_input.b, 11197u, 0u)), global1.c.d.x)), _wgslsmith_div_u32(1u ^ ~u_input.b, _wgslsmith_mod_u32(max(reverseBits(global1.a), ~global1.c.c.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.b, 0u, global1.d.x), vec4<u32>(global1.a, 1920u, 0u, u_input.b) | global1.d))));
}

fn func_4(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = Struct_2(firstLeadingBit(1u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(~global1.c.b.x, u_input.b), ~(~arg_0.d.xw)) % 32u), vec2<bool>(all(vec3<bool>(arg_0.b.x, all(vec4<bool>(true, true, false, true)), false)), !any(vec4<bool>(arg_0.b.x, global1.c.d.x, true, true))), Struct_1(countOneBits(abs(1i >> (0u % 32u))), abs(global1.d.yy), ~arg_0.c.b, vec3<bool>(all(!vec3<bool>(global1.b.x, global1.c.d.x, arg_0.b.x)), global1.b.x, global1.b.x)), abs(vec4<u32>(_wgslsmith_add_u32(4294967295u, global1.d.x), arg_0.d.x, 52500u, _wgslsmith_mult_u32(0u, 4294967295u))) ^ ~(~(~vec4<u32>(arg_0.d.x, 1564u, 18167u, 4294967295u))));
    let var_1 = var_0.b.x;
    global0 = array<vec3<f32>, 1>();
    let var_2 = reverseBits(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(-18636i, 0i), ~2147483647i), u_input.a.x), ~(~(-global1.c.a)), _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.c.x & 1i, _wgslsmith_div_i32(0i, -2147483647i)), 17365i >> (~4294967295u % 32u))));
    let var_3 = Struct_3(global2.x, arg_0.c.d.x, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(select(u_input.b, arg_0.a, true) & ~64146u), ~(~1u)), 9u)]);
    return vec4<u32>(((var_0.a & 30074u) << (countOneBits(global1.c.b.x) % 32u)) & reverseBits(~1u), _wgslsmith_mult_u32(0u >> (~4294967295u % 32u), abs(1u)), global1.a ^ u_input.b, ~(~arg_0.a)) ^ ~(~select(countOneBits(var_0.d), ~global1.d, false));
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = Struct_2(abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(22447u, 13064u), abs(global1.c.b))), vec2<bool>(true, false), global1.c, abs(global1.d));
    var var_1 = _wgslsmith_mult_i32(~_wgslsmith_clamp_i32(-1i, abs(_wgslsmith_sub_i32(u_input.c.x, var_0.c.a)), var_0.c.a), _wgslsmith_mult_i32(-(~(-1i >> (1u % 32u))), u_input.a.x));
    var var_2 = var_0.c.a;
    var var_3 = global1.c;
    let var_4 = _wgslsmith_div_vec4_u32(vec4<u32>(~u_input.b, countOneBits(~(~1u)), 31866u, _wgslsmith_mod_u32(global1.a, ~min(var_3.c.x, global1.a))), func_4(Struct_2(abs(~0u), vec2<bool>(-395f != global2.x, all(var_0.c.d)), global1.c, vec4<u32>(u_input.b, ~var_0.c.b.x, func_3(global1.b.x, global0[_wgslsmith_index_u32(u_input.b, 1u)]), global1.d.x))));
    return Struct_3(-610f, 1i >= var_0.c.a, var_0.c);
}

fn func_1() -> Struct_3 {
    global4 = array<vec4<u32>, 13>();
    var var_0 = true;
    let var_1 = select(!(!(!vec4<bool>(false, global1.c.d.x, global1.b.x, false))), !vec4<bool>(true, global1.b.x, global1.c.d.x, !global1.c.d.x == (false && global1.c.d.x)), (global1.c.a << (u_input.b % 32u)) != u_input.c.x);
    var var_2 = func_2(5084i);
    let var_3 = func_2(-3789i).c;
    return func_2(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = Struct_2(~(func_3(global1.c.d.x & false, global0[_wgslsmith_index_u32(var_0.c.c.x, 1u)]) & global1.c.c.x), vec2<bool>((all(vec4<bool>(true, global1.c.d.x, false, global1.b.x)) | global1.c.d.x) && !func_2(-13673i).c.d.x, !global1.c.d.x), Struct_1(u_input.c.x, global1.c.c, _wgslsmith_div_vec2_u32(global1.d.xz, vec2<u32>(0u, global1.c.b.x)) >> (vec2<u32>(0u ^ global1.d.x, reverseBits(u_input.b)) % vec2<u32>(32u)), !(!select(var_0.c.d, vec3<bool>(var_0.c.d.x, true, var_0.c.d.x), global1.b.x))), vec4<u32>(firstLeadingBit(4294967295u), ~firstLeadingBit(_wgslsmith_mod_u32(30018u, 66177u)), u_input.b, max(var_0.c.b.x, ~u_input.b)));
    var var_1 = _wgslsmith_f_op_f32(round(-367f));
    let var_2 = ~u_input.b;
    var var_3 = var_0.c;
    let var_4 = global0[_wgslsmith_index_u32(var_0.c.c.x, 1u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(vec3<i32>(-7745i, 0i, -11217i), ~countOneBits(vec3<i32>(3011i, var_0.c.a, u_input.a.x) >> (global1.d.wzz % vec3<u32>(32u)))), _wgslsmith_mod_vec2_i32(min(vec2<i32>(u_input.a.x >> (var_0.c.b.x % 32u), 0i), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.a, -2147483647i, 1i, 1i), vec4<i32>(0i, 1i, 42065i, -2147483647i)), abs(global1.c.a))), ~vec2<i32>(~(-16155i), var_0.c.a)), ~func_2(-1i).c.b.x, firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_3.a, var_0.c.a, -2147483647i), _wgslsmith_add_i32(-33052i, u_input.c.x)), countOneBits(_wgslsmith_clamp_i32(1i, global1.c.a, global1.c.a)), var_3.a >> (_wgslsmith_clamp_u32(1u, 107568u, 0u) % 32u))), vec3<i32>(-2147483647i & _wgslsmith_clamp_i32(global1.c.a, 1i, var_3.a), ~(~var_3.a), abs(firstTrailingBit(-1i))) & vec3<i32>(-61179i, abs(firstLeadingBit(13595i)), global1.c.a));
}

