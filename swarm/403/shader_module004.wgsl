struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: Struct_2 = Struct_2(true, Struct_1(-3717i, vec3<bool>(true, false, true), -15060i));

var<private> global2: vec2<i32>;

var<private> global3: bool = true;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = global1.b;
    var var_1 = var_0.b.x;
    let var_2 = select(select(!global1.b.b.xz, vec2<bool>(arg_0, any(select(vec4<bool>(true, var_0.b.x, false, false), vec4<bool>(var_0.b.x, global1.b.b.x, true, global1.b.b.x), false))), var_0.b.xz), select(!var_0.b.zy, !vec2<bool>(true, !var_0.b.x), var_0.b.zz), all(!global1.b.b.zy) || !(~u_input.c > ~58324u));
    var var_3 = u_input.d.xx;
    let var_4 = global1.b.c;
    return !global1.b.b.x & true;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: vec4<f32>) -> i32 {
    global1 = arg_0.b;
    let var_0 = Struct_2(func_3((false != (arg_0.a.b.b.x || false)) || any(vec4<bool>(global1.b.b.x, arg_0.b.a, true, false))), Struct_1(global1.b.c, select(!(!arg_0.a.b.b), arg_0.a.b.b, true), arg_0.b.b.a));
    let var_1 = arg_0.a.b.b.x;
    let var_2 = vec2<u32>(0u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, arg_0.d, arg_0.d, 1u), min(vec4<u32>(u_input.d.x, 672u, u_input.b, 1u), vec4<u32>(u_input.c, 0u, arg_0.d, 67339u))), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.d, 4294967295u, u_input.c, u_input.d.x), vec4<u32>(1u, u_input.d.x, arg_0.d, 4294967295u)))), _wgslsmith_dot_vec2_u32(abs(u_input.d.xy), _wgslsmith_mod_vec2_u32(u_input.d.zy, u_input.d.xx) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(88779u, 1u), vec2<u32>(4294967295u, u_input.b), vec2<u32>(arg_0.d, u_input.b)))));
    global1 = Struct_2(all(!select(select(vec4<bool>(var_1, false, true, arg_0.a.b.b.x), vec4<bool>(var_1, true, arg_0.b.b.b.x, global1.b.b.x), vec4<bool>(global1.b.b.x, arg_0.b.a, false, false)), vec4<bool>(false, true, arg_0.a.b.b.x, false), !vec4<bool>(true, var_0.a, true, arg_0.a.a))), var_0.b);
    return global2.x;
}

fn func_1(arg_0: i32) -> Struct_2 {
    global2 = vec2<i32>(select(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a, global1.b.a), func_2(Struct_3(Struct_2(true, Struct_1(2147483647i, vec3<bool>(global1.a, false, false), 47270i)), Struct_2(global1.b.b.x, global1.b), -136f, 1u), vec2<i32>(global2.x, 1i), vec2<f32>(103f, -105f), vec4<f32>(-1320f, 206f, -1336f, 258f))) >> (~u_input.b % 32u), global1.b.a & global2.x, global1.a), firstTrailingBit(global1.b.a));
    return Struct_2(any(select(select(vec2<bool>(false, global1.b.b.x), global1.b.b.zz, vec2<bool>(global1.b.b.x, true)), global1.b.b.xy, true)) | (_wgslsmith_sub_i32(27645i, -27417i) > _wgslsmith_clamp_i32(u_input.a & global2.x, -arg_0, 2147483647i)), Struct_1(-22705i << ((~0u << ((u_input.b ^ 4294967295u) % 32u)) % 32u), !select(vec3<bool>(global1.b.b.x, false, false), vec3<bool>(false, global1.a, global1.b.b.x), !global1.b.b), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global1 = func_1(~firstTrailingBit(_wgslsmith_mod_i32(12614i, global1.b.c)));
    let var_1 = _wgslsmith_f_op_f32(-1072f - 1189f);
    let var_2 = var_0;
    let var_3 = ~vec2<u32>(~var_0, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0 << (var_2 % 32u), _wgslsmith_dot_vec2_u32(u_input.d.yy, vec2<u32>(1u, 61630u))), ~vec2<u32>(28809u, var_2) ^ vec2<u32>(54664u, var_0)));
    global0 = array<Struct_2, 8>();
    global3 = 109199u < ((_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.b, var_2), ~u_input.c) & _wgslsmith_mod_u32(~u_input.c, u_input.b >> (u_input.b % 32u))) | (_wgslsmith_clamp_u32(~14363u, ~11661u, u_input.c) & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, var_2, 1u) >> (vec4<u32>(1u, 87945u, 0u, var_3.x) % vec4<u32>(32u)), vec4<u32>(4294967295u, var_2, u_input.c, 0u))));
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-616f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * var_1))))))));
}

