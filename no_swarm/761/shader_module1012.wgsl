struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1000f, -1510f, -133f, -312f);

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 43981u, 71224u);

var<private> global2: array<vec3<bool>, 14>;

var<private> global3: Struct_5 = Struct_5(vec2<bool>(true, true), vec4<i32>(17806i, -50365i, 15581i, -26620i), Struct_1(vec3<i32>(i32(-2147483648), 1i, 35394i)));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: Struct_5, arg_3: vec4<bool>) -> i32 {
    let var_0 = Struct_2(arg_2.c.a.zy);
    let var_1 = global1.x;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1609f + _wgslsmith_f_op_f32(arg_0.x + 816f)))) - _wgslsmith_f_op_f32(ceil(arg_0.x))));
    let var_3 = arg_3.ww;
    let var_4 = Struct_1(vec3<i32>(select(var_0.a.x << (1u % 32u), 1i, true) ^ -min(global3.b.x, -38192i), abs(-select(-23338i, -51185i, false)), select(var_0.a.x, 7866i, all(vec4<bool>(true, false, true, arg_3.x))) & _wgslsmith_add_i32(40564i, 1i)));
    return _wgslsmith_div_i32(global3.c.a.x, _wgslsmith_mod_i32(-(~(-var_4.a.x)), 19394i));
}

fn func_2() -> i32 {
    let var_0 = select(true, global3.a.x, !global3.a.x);
    let var_1 = global3.c;
    let var_2 = Struct_5(!global3.a, vec4<i32>(0i | (~(-277i) >> (u_input.d % 32u)), func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 157f, 988f))), ~global1.zz, Struct_5(!global3.a, -global3.b, global3.c), !(!vec4<bool>(false, var_0, true, global3.a.x))), global3.b.x, var_1.a.x), Struct_1(select(-global3.b.zzz, global3.c.a << (vec3<u32>(u_input.a, 19059u, 105u) % vec3<u32>(32u)), select(global3.a.x, true, global3.a.x)) | ~var_1.a));
    let var_3 = _wgslsmith_add_u32(0u, u_input.b);
    global2 = array<vec3<bool>, 14>();
    return i32(-1i) * -_wgslsmith_dot_vec2_i32(var_2.b.xy >> (abs(global1.zx) % vec2<u32>(32u)), -(global3.c.a.yx << (vec2<u32>(var_3, var_3) % vec2<u32>(32u))));
}

fn func_1() -> Struct_5 {
    let var_0 = global0.x;
    var var_1 = func_2();
    var var_2 = ~vec3<u32>(firstLeadingBit(~global1.x ^ ~55029u), 22271u, ~(~firstTrailingBit(43770u)));
    var var_3 = Struct_5(vec2<bool>(all(vec4<bool>(false, global3.a.x, false, global3.b.x != 2147483647i)), true), vec4<i32>(_wgslsmith_div_i32(global3.b.x, -46307i), -2147483647i, u_input.c, -6400i), Struct_1(global3.c.a));
    var var_4 = Struct_5(vec2<bool>(!(_wgslsmith_mod_u32(1u, u_input.a) >= global1.x), !any(global2[_wgslsmith_index_u32(~5830u, 14u)])), ~(~firstLeadingBit(global3.b)), Struct_1(var_3.c.a));
    return Struct_5(!var_4.a, ~abs(vec4<i32>(~var_4.b.x, u_input.c, -1i, 1i)), global3.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.x;
    global3 = func_1();
    var var_1 = Struct_1(~(-vec3<i32>(i32(-1i) * -2147483647i, 0i, -17128i >> (global1.x % 32u))));
    var var_2 = Struct_4(Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, 1748i, -23132i), _wgslsmith_sub_vec3_i32(abs(global3.b.wyw), var_1.a), reverseBits(abs(var_1.a)))), Struct_2(var_1.a.zx));
    global2 = array<vec3<bool>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, global0.wz, -(40134i | _wgslsmith_mult_i32(func_2(), global3.c.a.x & global3.b.x)));
}

