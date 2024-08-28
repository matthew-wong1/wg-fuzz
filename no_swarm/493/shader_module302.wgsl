struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(0u, 0u, 13964u, 1u, 6956u, 2683u, 53514u, 76651u, 1u, 0u, 7830u, 0u, 35264u);

var<private> global1: Struct_2;

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, false, true), 903f, 1u, vec2<u32>(1u, 1u), false);

var<private> global3: u32;

var<private> global4: array<Struct_5, 23>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec3<bool> {
    global1 = Struct_2(global1.a, _wgslsmith_div_vec3_f32(global1.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, 360f, global1.b.x) * vec3<f32>(global2.b, -834f, 1196f))), _wgslsmith_div_vec3_f32(global1.b, global1.b), global2.a))), Struct_1(!vec3<bool>(select(true, global1.c.e, true), any(vec2<bool>(true, true)), !global1.c.e), global1.b.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, 69199u), ~arg_0), ~13604u), select(~vec2<u32>(27571u, 22202u), ~vec2<u32>(u_input.c, 16554u), true), any(!(!vec4<bool>(true, global2.a.x, false, false)))));
    global0 = array<u32, 13>();
    var var_0 = global2.d;
    let var_1 = Struct_3(Struct_2(vec2<u32>(1u, _wgslsmith_sub_u32(0u, var_0.x)) >> ((global1.c.d >> (global1.a % vec2<u32>(32u))) % vec2<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global1.b.x, global1.c.b, global2.e)), _wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * 1127f)), global2.b), global1.c), Struct_2(~(~(~global2.d)), global1.b, Struct_1(vec3<bool>(!global2.a.x, true, !global1.c.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.b))), _wgslsmith_div_u32(~global2.d.x, global1.a.x >> (global2.d.x % 32u)), ~(global1.a & u_input.d.yy), true)), global1.c, global1.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -1550f) - _wgslsmith_f_op_f32(sign(-1384f))))));
    global0 = array<u32, 13>();
    return !vec3<bool>(true, !select(true, true, global1.c.e & false), var_1.d.e || all(select(vec4<bool>(global1.c.a.x, false, false, false), vec4<bool>(var_1.d.e, false, true, global2.e), false)));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_4(global0[_wgslsmith_index_u32(~(global2.c << (_wgslsmith_sub_u32(u_input.d.x, 9860u) % 32u)), 13u)] & _wgslsmith_div_u32(u_input.d.x, ~(17078u >> (global2.c % 32u))), ~(~(~44157u)));
    let var_1 = global1.c.e;
    let var_2 = ~global1.c.d;
    var var_3 = Struct_3(Struct_2(_wgslsmith_div_vec2_u32(~abs(vec2<u32>(0u, global0[_wgslsmith_index_u32(47090u, 13u)])), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.d.xy, global2.d))), global1.b, Struct_1(func_3(1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b * 719f) + _wgslsmith_div_f32(695f, global2.b)), global1.a.x, _wgslsmith_clamp_vec2_u32(var_2, global1.c.d >> (vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], 4294967295u) % vec2<u32>(32u)), var_2 & vec2<u32>(4294967295u, var_2.x)), global2.a.x)), Struct_2(countOneBits(~(~u_input.d.ww)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.b)) * 957f), _wgslsmith_f_op_f32(global1.b.x + _wgslsmith_div_f32(global1.c.b, -174f)), -819f), Struct_1(!global1.c.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.b))), abs(~var_0.b), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.c, 68370u), _wgslsmith_div_vec2_u32(var_2, global2.d)), any(!vec4<bool>(false, true, global2.e, false)))), Struct_1(global1.c.a, -827f, 56192u, vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.a.x, u_input.c) >> (~u_input.d.x % 32u), 13u)], global1.c.c), false), global1.c, _wgslsmith_f_op_vec3_f32(-global1.b));
    global1 = var_3.b;
    return var_3.d;
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    global0 = array<u32, 13>();
    global4 = array<Struct_5, 23>();
    global1 = Struct_2(_wgslsmith_mod_vec2_u32(global1.a, vec2<u32>(~31580u, arg_1.a.x)), arg_2.b, func_2(vec3<bool>(any(select(vec4<bool>(global2.e, false, true, true), vec4<bool>(global2.a.x, global1.c.a.x, false, true), true)), any(vec2<bool>(true, false)), true)));
    let var_0 = !(!global2.a.zy);
    global2 = Struct_1(global1.c.a, func_2(global2.a).b, arg_1.a.x, arg_2.a, true);
    return ~u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~global2.d, u_input.d.xy >> (u_input.d.ww % vec2<u32>(32u))), _wgslsmith_clamp_u32(~10854u, 4294967295u, global0[_wgslsmith_index_u32(31585u, 13u)]), _wgslsmith_sub_u32(global1.c.d.x, _wgslsmith_clamp_u32(60688u, 125056u, global2.c))), global1.c.c), global1.b, global1.c);
    global0 = array<u32, 13>();
    global3 = _wgslsmith_div_u32(0u, 1u) ^ var_0.c.c;
    var var_1 = _wgslsmith_div_i32(max(_wgslsmith_add_i32(10793i | u_input.a.x, ~13742i), countOneBits(1i)), func_1(_wgslsmith_f_op_f32(global2.b + var_0.b.x), var_0, var_0) << (~var_0.c.d.x % 32u)) ^ reverseBits(-u_input.a.x);
    let var_2 = vec4<u32>(abs(firstTrailingBit(global1.c.c)), ~97315u, _wgslsmith_add_u32(var_0.a.x, _wgslsmith_dot_vec3_u32(u_input.d.wxw >> (u_input.d.yzy % vec3<u32>(32u)), reverseBits(vec3<u32>(var_0.c.d.x, 0u, 7202u))) ^ global2.d.x), global2.d.x);
    global4 = array<Struct_5, 23>();
    let var_3 = Struct_4(_wgslsmith_mod_u32(1u, countOneBits(global1.a.x)), countOneBits(68007u));
    global2 = func_2(vec3<bool>(false, 0u > var_3.a, global1.c.e));
    let var_4 = global2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)), 214i, _wgslsmith_div_vec3_f32(var_0.b, var_0.b), 27261u, vec3<u32>(~(~select(global2.d.x, 176u, true)), _wgslsmith_mod_u32(var_2.x, ~max(var_3.a, u_input.c)), _wgslsmith_dot_vec4_u32(vec4<u32>(~20592u, u_input.d.x ^ 29357u, _wgslsmith_mod_u32(var_0.a.x, u_input.c), 1u), ~vec4<u32>(global0[_wgslsmith_index_u32(1u, 13u)], 1u, global1.a.x, 1u))));
}

