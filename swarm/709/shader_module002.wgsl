struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<Struct_1, 11>;

var<private> global2: i32 = -10670i;

var<private> global3: Struct_3;

var<private> global4: vec2<bool>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = vec4<i32>(firstTrailingBit(-u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, u_input.b.x), _wgslsmith_div_i32(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 39926i, u_input.a.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i))), ~_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), 47805i)), 1i);
    let var_1 = Struct_3(!vec2<bool>(1255f >= _wgslsmith_f_op_f32(floor(arg_0.a)), !global3.a.x), global3.b);
    var var_2 = !vec3<bool>(any(vec4<bool>(global4.x & true, true, !arg_0.c.x, true)), true, arg_0.c.x);
    global4 = select(vec2<bool>(!(!select(true, true, false)), false | !(!arg_0.b.x)), vec2<bool>(!(global3.a.x || false), all(vec3<bool>(false, false, true)) | global4.x), vec2<bool>(min(max(1i, u_input.a.x), abs(u_input.b.x)) == 5432i, select(true, select(var_1.a.x, !var_2.x, global4.x != false), !any(vec4<bool>(var_1.a.x, false, arg_0.c.x, var_1.a.x)))));
    var_2 = !select(vec3<bool>(true, true && var_2.x, any(vec3<bool>(true, true, true))), arg_0.b, true);
    return global3.b.zx;
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> Struct_3 {
    let var_0 = vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.a.x);
    var var_1 = _wgslsmith_mod_vec2_u32(arg_1.b.zw, firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, 0u) << ((vec2<u32>(arg_1.b.x, 1u) | u_input.c.yy) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(reverseBits(u_input.c.zz), func_3(Struct_1(-1224f, vec3<bool>(false, false, false), vec2<bool>(global4.x, false), -706f))), max(vec2<u32>(4294967295u, 25083u), vec2<u32>(1u, 1u)))));
    var var_2 = Struct_3(!select(!arg_1.a, select(!arg_1.a, global3.a, !vec2<bool>(false, arg_0)), vec2<bool>(arg_1.a.x || false, true)), ~vec4<u32>(1u, 0u, 17309u, ~(~var_1.x)));
    var var_3 = Struct_2(~(~global3.b.x));
    let var_4 = Struct_2(~var_1.x);
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = func_2(arg_1.c.x, Struct_3(global3.a, global3.b << (countOneBits(global3.b >> (vec4<u32>(18347u, u_input.c.x, u_input.c.x, global3.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_1 = func_2(global4.x, Struct_3(vec2<bool>(global4.x, arg_2), ~vec4<u32>(~u_input.c.x, ~1u, _wgslsmith_dot_vec4_u32(global3.b, global3.b), abs(0u))));
    let var_2 = arg_1;
    var var_3 = abs(-vec3<i32>(max(_wgslsmith_mod_i32(u_input.a.x, u_input.b.x), min(-2716i, 5579i)), -2147483647i, 1i));
    let var_4 = vec4<i32>(2147483647i, -_wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_0, -u_input.a.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x), vec4<i32>(arg_0, 0i, 11064i, 2147483647i))), i32(-1i) * -47133i, arg_0);
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~((global3.b.x ^ 15584u) >> (max(func_1(u_input.a.x, Struct_1(-263f, vec3<bool>(true, global4.x, true), global3.a, -1344f), global4.x), 12530u) % 32u)) != ~(~(39207u | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, 4294967295u, global3.b.x), vec4<u32>(global3.b.x, u_input.c.x, 1u, 2946u))));
    var var_1 = Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(0u, u_input.c.x, global3.b.x), abs(22687u)), ~global3.b.zx << (~global3.b.yw % vec2<u32>(32u))), ~(~vec2<u32>(global3.b.x, 5625u))));
    var var_2 = select(vec3<bool>(true, global4.x, true), select(vec3<bool>(true, all(select(global3.a, global3.a, true)), false), !vec3<bool>(select(global3.a.x, global3.a.x, false), global3.a.x, global4.x), true), vec3<bool>(true, (select(u_input.b.x, u_input.a.x, global3.a.x) >= u_input.a.x) && (_wgslsmith_add_i32(u_input.b.x, u_input.a.x) <= abs(u_input.b.x)), true));
    var var_3 = Struct_2(_wgslsmith_add_u32(u_input.c.x, _wgslsmith_mod_u32(~u_input.c.x, _wgslsmith_dot_vec3_u32(u_input.c, global3.b.wyx) << (u_input.c.x % 32u))));
    var var_4 = select(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-2147483647i, u_input.b.x), -26877i | u_input.a.x, abs(73477i), -u_input.a.x) ^ _wgslsmith_add_vec4_i32(vec4<i32>(-11399i, u_input.b.x, -1i, u_input.a.x), vec4<i32>(1i, u_input.a.x, u_input.b.x, 18760i) ^ vec4<i32>(u_input.a.x, -1i, 0i, u_input.b.x)), ~vec4<i32>(u_input.b.x, -25155i, -2147483647i >> (0u % 32u), -35873i)), vec4<i32>(-1i) * -vec4<i32>(~19642i, 1i, _wgslsmith_add_i32(u_input.b.x, u_input.b.x), _wgslsmith_div_i32(u_input.b.x, -52071i)), select(!(!vec4<bool>(false, var_2.x, false, var_2.x)), select(vec4<bool>(!global3.a.x, !global3.a.x, !global4.x, global4.x), !(!vec4<bool>(var_2.x, var_2.x, false, global3.a.x)), !vec4<bool>(true, global4.x, true, false)), !any(vec2<bool>(global3.a.x, false)) && false));
    var var_5 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(-25802i, 0i, -2147483647i, 33269i), vec4<i32>(-(~var_4.x), countOneBits(-28044i), u_input.b.x, (u_input.a.x & -16123i) | 35330i));
    global0 = abs(var_3.a);
    var var_6 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3.b.x, u_input.c.x), 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(-1054i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1406f * -1208f), _wgslsmith_f_op_f32(step(-128f, -594f)))))))), func_3(Struct_1(_wgslsmith_f_op_f32(select(var_6.d, -1188f, false)), select(var_6.b, select(vec3<bool>(var_6.b.x, global3.a.x, false), vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(false, global3.a.x, false)), var_6.b), select(select(vec2<bool>(false, false), var_6.c, vec2<bool>(true, false)), !var_2.xx, global4.x), -548f)).x);
}

