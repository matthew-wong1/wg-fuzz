struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_4 = Struct_4(false, vec2<u32>(43658u, 4294967295u), vec3<u32>(4294967295u, 1u, 10448u));

var<private> global2: array<vec2<i32>, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    global0 = -1i;
    global2 = array<vec2<i32>, 16>();
    var var_0 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-arg_2.x));
    return Struct_1(abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 19192i, arg_1.a, u_input.a.x), firstLeadingBit(u_input.a))));
}

fn func_3(arg_0: vec3<f32>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 100f));
    global1 = Struct_4(global1.c.x < ~(~0u ^ ~u_input.b.x), abs(countOneBits(global1.c.zy)), vec3<u32>(countOneBits(global1.c.x), min(global1.c.x, ~(u_input.b.x >> (u_input.b.x % 32u))), firstTrailingBit(~max(global1.b.x, 1u))));
    var var_1 = 4704u;
    var var_2 = global1.c;
    var_2 = countOneBits(_wgslsmith_mod_vec3_u32(abs(countOneBits(firstTrailingBit(global1.c))), u_input.b.wxw));
    return _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(438f))), arg_0.x, _wgslsmith_f_op_f32(310f * arg_0.x))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = Struct_4(select(!(!(global1.a | arg_3.b)), true, !(true || !global1.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.b.x, 58147u), vec2<u32>(56721u ^ u_input.b.x, global1.c.x) | ~(~vec2<u32>(arg_0.b.x, arg_0.b.x))), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.b.x, global1.c.x, 43940u)), ~firstLeadingBit(vec3<u32>(22387u, 15963u, u_input.b.x) & arg_1.b.wzx)));
    let var_1 = arg_1;
    return abs(_wgslsmith_clamp_vec3_u32(u_input.b.xxy, _wgslsmith_mult_vec3_u32(~vec3<u32>(8645u, global1.c.x, 69608u), select(vec3<u32>(0u, arg_0.b.x, 77962u), ~vec3<u32>(u_input.b.x, global1.c.x, 25728u), true)), select(~var_0.c, _wgslsmith_add_vec3_u32(vec3<u32>(26563u, var_0.b.x, global1.c.x), var_1.b.zzw >> (var_1.b.xxw % vec3<u32>(32u))), any(vec2<bool>(true, arg_3.b)))));
}

fn func_1(arg_0: vec3<f32>) -> vec2<bool> {
    var var_0 = select(~(~(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), func_4(Struct_3(func_2(global1.c.x, Struct_1(u_input.a.x), vec4<f32>(-1083f, arg_0.x, 451f, -302f)), vec4<u32>(global1.b.x, global1.c.x, 0u, u_input.b.x) & vec4<u32>(global1.b.x, 55151u, 59054u, global1.c.x)), Struct_3(func_2(24151u, Struct_1(0i), vec4<f32>(485f, arg_0.x, -1462f, 1000f)), vec4<u32>(1u, u_input.b.x, u_input.b.x, 4294967295u)), Struct_1(u_input.a.x), Struct_2(_wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(838f, 744f, arg_0.x))), global1.a, ~u_input.a.x, Struct_1(u_input.a.x))), vec3<bool>(global1.a, !all(vec4<bool>(true, global1.a, global1.a, global1.a)), all(vec4<bool>(false, true, false, false)))) ^ func_4(Struct_3(Struct_1(-2147483647i), u_input.b), Struct_3(Struct_1(~u_input.a.x), _wgslsmith_add_vec4_u32(~u_input.b, _wgslsmith_add_vec4_u32(u_input.b, u_input.b))), func_2(0u, func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.c.x, 1u), u_input.b.wz), func_2(75655u, Struct_1(u_input.a.x), vec4<f32>(arg_0.x, -1000f, arg_0.x, 567f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 498f, arg_0.x, 1094f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -906f)) * vec4<f32>(193f, arg_0.x, arg_0.x, 687f))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_0))), global1.a, -u_input.a.x, func_2(firstLeadingBit(4294967295u), func_2(u_input.b.x, Struct_1(41421i), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -187f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(843f, -1232f, -748f, arg_0.x), vec4<f32>(-1899f, arg_0.x, arg_0.x, 911f), vec4<bool>(global1.a, global1.a, false, global1.a))))));
    let var_1 = _wgslsmith_dot_vec3_u32(global1.c, vec3<u32>(0u, 1u, 1737u));
    var var_2 = u_input.b;
    global0 = -abs(_wgslsmith_mult_i32(-u_input.a.x, u_input.a.x));
    global0 = u_input.a.x;
    return vec2<bool>(global1.a, global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(all(select(vec2<bool>(true, true), func_1(vec3<f32>(-684f, 1000f, -448f)), any(vec4<bool>(true, true, global1.a, global1.a)))), vec2<u32>(abs(4294967295u), max(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), 1u) | global1.c.x), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~global1.c, ~vec3<u32>(global1.b.x, u_input.b.x, 1u)), _wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(global1.c, u_input.b.yxx), u_input.b.zzx >> (select(global1.c, vec3<u32>(10831u, 22950u, global1.c.x), vec3<bool>(global1.a, false, global1.a)) % vec3<u32>(32u))), u_input.b.wwx));
    var var_0 = !func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(468f, 250f, 1394f))))))).x;
    let var_1 = -46787i;
    var var_2 = vec4<bool>(all(!(!vec3<bool>(global1.a, global1.a, global1.a))), all(select(vec2<bool>(global1.a, true), !vec2<bool>(global1.a, global1.a), func_1(vec3<f32>(-650f, 983f, 558f)))), select(!(!any(vec4<bool>(false, global1.a, global1.a, false))), global1.a & true, false && global1.a), select(false, select(true || (u_input.b.x == global1.c.x), false, global1.a), !any(!vec2<bool>(global1.a, false))));
    var_2 = vec4<bool>(true, true, var_2.x, all(vec2<bool>(global1.a, all(select(vec4<bool>(global1.a, true, true, global1.a), vec4<bool>(false, global1.a, var_2.x, false), vec4<bool>(var_2.x, global1.a, false, var_2.x))))));
    let var_3 = firstLeadingBit(min(vec2<u32>(~(~global1.b.x), ~global1.b.x), _wgslsmith_sub_vec2_u32(global1.b, u_input.b.ww)));
    let var_4 = var_3.x;
    global1 = Struct_4(select(global1.a, var_2.x, true), ~(global1.b & (vec2<u32>(4294967295u, global1.b.x) ^ vec2<u32>(global1.b.x, var_3.x))), _wgslsmith_mult_vec3_u32(u_input.b.zyx, u_input.b.yyz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-187f, 1948f, 1000f)))))))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(var_3.x, 4294967295u), vec2<u32>(u_input.b.x, u_input.b.x)), global1.b), 33431u), vec3<i32>(func_2(min(min(27336u, 35357u), abs(var_4)), Struct_1(var_1), vec4<f32>(_wgslsmith_f_op_f32(217f + -324f), -1000f, _wgslsmith_f_op_f32(floor(-492f)), -1000f)).a, min(~(-2147483647i ^ var_1), max(firstLeadingBit(17459i), firstLeadingBit(-5680i))), u_input.a.x), ~_wgslsmith_div_i32(15225i, var_1), -2147483647i);
}

