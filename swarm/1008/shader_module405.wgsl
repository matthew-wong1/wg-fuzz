struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(921f, -596f), vec3<bool>(true, false, true), vec4<i32>(2147483647i, 42085i, -16088i, 37511i), vec2<f32>(1000f, -302f));

var<private> global1: Struct_3 = Struct_3(0u);

var<private> global2: i32;

var<private> global3: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(false, true), Struct_2(false, false), Struct_2(false, false), Struct_2(true, true), Struct_2(false, true), Struct_2(false, false), Struct_2(false, false), Struct_2(true, true), Struct_2(true, false), Struct_2(true, false), Struct_2(false, true), Struct_2(false, true), Struct_2(false, true), Struct_2(false, false), Struct_2(true, true), Struct_2(false, true), Struct_2(true, true), Struct_2(true, false), Struct_2(true, true), Struct_2(true, false), Struct_2(false, false));

var<private> global4: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = global0.c.x;
    global2 = -_wgslsmith_mod_i32(~(~(-14192i >> (1u % 32u))), countOneBits(-arg_3.c.x | max(u_input.c, global0.c.x)));
    return vec3<bool>(global0.b.x | true, true, true);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: f32, arg_3: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(915f)));
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(firstLeadingBit(vec4<u32>(arg_3, u_input.b.x, 29454u, arg_1.x))), select(max(vec4<u32>(arg_3, arg_3, u_input.b.x, 0u), vec4<u32>(1u, u_input.b.x, u_input.b.x, arg_3)), ~vec4<u32>(0u, 63396u, arg_1.x, 15682u), vec4<bool>(false, global0.b.x, false, true))) >> (~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1u, arg_1.x)), select(arg_1.x, u_input.b.x, arg_0.b), _wgslsmith_div_u32(u_input.b.x, 110125u), 1u >> (u_input.b.x % 32u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(firstTrailingBit(~(vec4<u32>(u_input.b.x, global1.a, 0u, global1.a) >> (vec4<u32>(arg_1.x, 4294967295u, arg_3, global1.a) % vec4<u32>(32u)))), vec4<u32>(abs(arg_3 << (1u % 32u)), 5043u, 4294967295u, ~23578u)));
    global4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_2)), 744f));
    let var_2 = _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, 2319f) * 2201f)))));
    var var_3 = Struct_3(arg_3);
    return u_input.c;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(false, !select(true, false, !(!global0.b.x)));
    return Struct_1(vec2<f32>(-110f, _wgslsmith_f_op_f32(f32(-1f) * -2400f)), global0.b, vec4<i32>(~(1i | func_3(Struct_2(var_0.b, var_0.b), vec3<u32>(0u, 1u, 0u), global0.d.x, 83546u)), global0.c.x, 17961i, ~1i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(439f, _wgslsmith_f_op_f32(f32(-1f) * -555f))), _wgslsmith_f_op_f32(abs(global0.a.x))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1792f, global0.d.x) * global0.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 21>();
    let var_0 = firstTrailingBit(i32(-1i) * -1i);
    var var_1 = select(!vec3<bool>(true, all(func_1(u_input.b.x, vec3<bool>(global0.b.x, false, global0.b.x), Struct_3(29477u), Struct_1(global0.a, global0.b, vec4<i32>(global0.c.x, global0.c.x, global0.c.x, 0i), vec2<f32>(359f, 1536f)))), global0.b.x), global0.b, vec3<bool>(true, func_1(u_input.b.x, !global0.b, Struct_3(global1.a), func_2()).x || any(!vec4<bool>(global0.b.x, global0.b.x, true, true)), ~(~2147483647i) >= global0.c.x));
    let var_2 = firstLeadingBit(select(global0.c, _wgslsmith_sub_vec4_i32(global0.c, -_wgslsmith_div_vec4_i32(vec4<i32>(-22770i, global0.c.x, -40571i, var_0), global0.c)), select(vec4<bool>(true, var_1.x, !var_1.x, true), !(!vec4<bool>(true, var_1.x, global0.b.x, true)), all(!vec4<bool>(var_1.x, false, false, var_1.x)))));
    var_1 = func_2().b;
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global1.a, 0u, 1u) & ~firstLeadingBit(vec3<u32>(1180u, 57254u, 4294967295u)), vec3<u32>(_wgslsmith_mod_u32(global1.a, global1.a), ~(global1.a ^ global1.a), select(4294967295u, global1.a, 1000f >= global0.d.x))) >> (global1.a % 32u), 21u)];
    var var_4 = Struct_2(var_1.x, (23588i ^ global0.c.x) <= -select(~var_0, _wgslsmith_div_i32(var_0, 0i), all(global0.b.xy)));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(global1.a), u_input.b, vec3<u32>(global1.a, global1.a, _wgslsmith_sub_u32(~(~global1.a), _wgslsmith_sub_u32(max(4294967295u, 87194u), u_input.b.x))), ~(~reverseBits(countOneBits(vec4<u32>(53595u, u_input.b.x, 26693u, 5519u)))));
}

