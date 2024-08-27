struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec3<f32>(-120f, -182f, -1145f), Struct_1(vec2<i32>(-24737i, 1i), vec4<i32>(2147483647i, i32(-2147483648), 1i, 2147483647i), 1i)), Struct_2(vec3<f32>(-1322f, -351f, 795f), Struct_1(vec2<i32>(-8857i, 1i), vec4<i32>(2147483647i, 2147483647i, 54626i, -64631i), -30773i)), Struct_2(vec3<f32>(-1508f, -815f, -1650f), Struct_1(vec2<i32>(10414i, 2147483647i), vec4<i32>(0i, 2147483647i, -16807i, 30553i), 1i)), Struct_2(vec3<f32>(107f, -336f, 1000f), Struct_1(vec2<i32>(16838i, 32896i), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 2147483647i), -1i)), Struct_2(vec3<f32>(-1261f, -767f, 549f), Struct_1(vec2<i32>(1i, -888i), vec4<i32>(-12349i, 1i, -27107i, 28773i), i32(-2147483648))));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: f32) -> vec3<bool> {
    let var_0 = !vec4<bool>(true, true, any(select(!vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, global1.x, global1.x), true)), !(global1.x & true));
    var var_1 = 32971u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))));
    global0 = true;
    global1 = !select(select(vec3<bool>(true, any(vec2<bool>(true, false)), !var_0.x), select(!var_0.wwx, var_0.wzw, vec3<bool>(true, true, false)), var_0.yzw), vec3<bool>(true || (var_0.x & false), global1.x, !global1.x | true), !(!(!vec3<bool>(var_0.x, true, var_0.x))));
    return var_0.xzw;
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec4<u32>) -> vec4<f32> {
    global1 = !func_2(-686f);
    return vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_div_f32(arg_1.a.x, arg_1.a.x))), arg_1.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.a.x + 1247f))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>) -> u32 {
    global1 = !(!vec3<bool>(true, ~arg_1.x >= _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 2752u), vec2<u32>(arg_1.x, 0u)), global1.x));
    var var_0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, ~reverseBits(arg_1.x)), select(~(~vec3<u32>(arg_1.x, arg_1.x, arg_1.x)), vec3<u32>(reverseBits(1u), arg_1.x, arg_1.x), select(select(vec3<bool>(global1.x, false, true), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, false, false)), select(vec3<bool>(global1.x, true, false), vec3<bool>(false, global1.x, false), global1.x), func_2(2101f))));
    var var_1 = ~arg_1;
    var_0 = ~0u << (arg_1.x % 32u);
    global0 = true;
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1227f)), 641f)), -280f, _wgslsmith_f_op_f32(abs(-1573f))), Struct_1(-vec2<i32>(u_input.a, -1i) | _wgslsmith_mod_vec2_i32(min(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -19912i), vec2<i32>(u_input.a, 7653i))), abs(-(~vec4<i32>(8206i, u_input.a, 6181i, u_input.a))), _wgslsmith_dot_vec3_i32(-abs(vec3<i32>(u_input.a, u_input.a, -8219i)), vec3<i32>(u_input.a & 39251i, u_input.a, 76077i))));
    let var_1 = max(u_input.a, _wgslsmith_clamp_i32(countOneBits(_wgslsmith_mod_i32(-20484i, var_0.b.c)), max(-u_input.a, _wgslsmith_add_i32(u_input.a, -var_0.b.a.x)), var_0.b.c));
    var var_2 = Struct_4(1u, _wgslsmith_f_op_vec4_f32(func_1(u_input.a, global2[_wgslsmith_index_u32(1u, 5u)], ~firstTrailingBit(vec4<u32>(48783u, 4294967295u, 34708u, 29932u)))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(9430u, 1u, func_3(Struct_3(29693i), vec2<u32>(1u, 35151u)), ~0u), ~abs(vec4<u32>(0u, 1u, 4294967295u, 27072u))), 1u, _wgslsmith_dot_vec3_u32(max(~vec3<u32>(4294967295u, 0u, 4294967295u), ~vec3<u32>(4294967295u, 4294967295u, 4294967295u)), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(14078u, 4294967295u, 7936u)), vec3<u32>(1u, 1u, 1u))), 14823u), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a - var_0.a)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(vec3<u32>(var_2.c.x, var_2.c.x, ~_wgslsmith_mod_u32(39562u, 13106u)), var_2.c.zwy), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-var_2.b.x))), _wgslsmith_f_op_vec3_f32(var_2.d - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(743f, var_2.d.x, var_0.a.x)))), select(vec3<bool>(true, true, !global1.x), !func_2(var_0.a.x), vec3<bool>(true, true, true)))), _wgslsmith_dot_vec2_u32(var_2.c.wy, vec2<u32>(~(~var_2.a), 85014u)), ~(var_2.c.xyy | ~(~var_2.c.yyx)));
}

