struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(0i, vec3<bool>(true, false, false), 2147483647i, vec3<u32>(38708u, 4294967295u, 4294967295u)), Struct_1(12428i, vec3<bool>(false, true, false), 28738i, vec3<u32>(0u, 4294967295u, 4294967295u)), vec4<f32>(521f, -1237f, 774f, -1727f));

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_2, 19>;

var<private> global3: vec3<u32> = vec3<u32>(32657u, 1u, 131691u);

var<private> global4: f32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    global4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.c.x + arg_0.x)));
    let var_0 = global0.a;
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.x, 4294967295u), 19u)];
    let var_2 = Struct_1(1i << (~(~0u >> (max(u_input.a.x, 0u) % 32u)) % 32u), select(vec3<bool>(true, false, false & (var_1.b.c >= u_input.d)), var_0.b, !(!vec3<bool>(false, true, var_1.a.b.x))), 23520i, vec3<u32>(~1u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), ~countOneBits(1u)) >> (select(~(~var_0.d), _wgslsmith_clamp_vec3_u32(var_0.d, var_0.d, vec3<u32>(18064u, 1324u, global0.b.d.x)) >> (~vec3<u32>(var_0.d.x, 11792u, 4294967295u) % vec3<u32>(32u)), !vec3<bool>(var_1.a.b.x, true, true)) % vec3<u32>(32u)));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.x, -202f) - _wgslsmith_f_op_f32(-var_1.c.x))) * _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2209f)))))), -1459f, _wgslsmith_f_op_f32(sign(global1.x)));
    return var_0.d.x;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.c.yzy + vec3<f32>(_wgslsmith_f_op_f32(-1519f - 872f), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global0.c.x))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, global1.x, global0.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c.wwz))))) + _wgslsmith_f_op_vec3_f32(abs(global0.c.zyy)));
    var var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(~(~4294967295u), (1u | u_input.b) ^ ~1u, global3.x, _wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.yw, vec2<u32>(global0.a.d.x, 1u)))), vec4<u32>(min(0u, func_3(var_0.xz)), 0u, _wgslsmith_dot_vec4_u32(u_input.a, ~u_input.a), reverseBits(~295u))) ^ ~(~u_input.a);
    let var_2 = reverseBits(_wgslsmith_clamp_vec3_u32(global0.b.d, countOneBits(_wgslsmith_add_vec3_u32(global0.a.d, global0.a.d)), ~vec3<u32>(12774u, 29031u, 8856u))) ^ ~abs(var_1.zwy);
    var var_3 = u_input.e;
    let var_4 = 2079f;
    return Struct_2(global0.a, global0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(157f)), _wgslsmith_f_op_f32(-var_0.x), var_4) - global0.c));
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = arg_0.d;
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(~(~select(4294967295u, 7468u, true)), 27999u, abs(_wgslsmith_add_u32(~arg_0.d.x, _wgslsmith_add_u32(arg_0.d.x, 45545u)))), abs(~global0.b.d));
    var var_2 = func_2();
    var_0 = ~abs(~(~vec3<u32>(34955u, global0.b.d.x, var_1))) | ~vec3<u32>(global0.b.d.x, u_input.a.x, firstTrailingBit(~32692u));
    let var_3 = Struct_1(2147483647i, !vec3<bool>(global1.x < _wgslsmith_f_op_f32(var_2.c.x - var_2.c.x), func_2().b.b.x, select(any(vec2<bool>(false, false)), false, true)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(min(var_2.b.c, u_input.c.x), func_2().b.a, _wgslsmith_dot_vec3_i32(vec3<i32>(23482i, global0.a.c, global0.a.c), u_input.c)), u_input.c), abs(-22318i)), global0.b.d >> (arg_0.d % vec3<u32>(32u)));
    return -u_input.e;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(global0.c.xy))));
    var var_0 = global2[_wgslsmith_index_u32(global3.x, 19u)];
    let var_1 = ~func_1(var_0.a);
    global2 = array<Struct_2, 19>();
    let var_2 = var_0.a.b;
    var var_3 = select(_wgslsmith_div_u32(~select(u_input.a.x, ~65685u, true), var_0.b.d.x), min(82582u, 0u), true);
    var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.d >> (~_wgslsmith_add_vec3_u32(~var_0.b.d, vec3<u32>(u_input.a.x, var_0.a.d.x, 99476u) | global0.b.d) % vec3<u32>(32u)), vec3<i32>(var_1.x, -38177i, 0i), max(firstLeadingBit(vec2<u32>(var_0.b.d.x, var_0.a.d.x) >> (func_2().a.d.yx % vec2<u32>(32u))), vec2<u32>(min(~global3.x, ~global0.a.d.x), ~min(global0.b.d.x, global3.x))), var_1.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-635f, -780f, -1282f, -201f), _wgslsmith_f_op_vec4_f32(-global0.c))))), _wgslsmith_f_op_vec4_f32(-global0.c), true)));
}

