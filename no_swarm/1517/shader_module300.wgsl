struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<u32>,
    e: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 29509u;

var<private> global1: i32;

var<private> global2: array<u32, 29> = array<u32, 29>(4294967295u, 727u, 0u, 4294967295u, 0u, 1u, 0u, 0u, 1u, 19557u, 1u, 1u, 0u, 64609u, 53741u, 45539u, 4294967295u, 4294967295u, 1u, 98498u, 31193u, 4294967295u, 1u, 1u, 58599u, 1u, 44663u, 35178u, 1u);

var<private> global3: vec3<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    return !global3.x;
}

fn func_2() -> Struct_2 {
    var var_0 = func_3();
    var var_1 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1089f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1937f - -1209f), _wgslsmith_f_op_f32(step(-383f, -1551f))))) <= _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_2 = _wgslsmith_mult_vec4_u32(~abs(~vec4<u32>(u_input.d, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 29u)], 29u)], 29u)], 29u)], 29u)], global2[_wgslsmith_index_u32(u_input.d, 29u)], global2[_wgslsmith_index_u32(35029u, 29u)])), vec4<u32>(4294967295u, 4294967295u, u_input.a, _wgslsmith_mod_u32(_wgslsmith_mod_u32(45828u, 1u), u_input.d))) & reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(u_input.e.x, 29u)], u_input.d, u_input.e.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(41515u, 29u)], u_input.d, global2[_wgslsmith_index_u32(u_input.e.x, 29u)], 4294967295u), ~vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], global2[_wgslsmith_index_u32(u_input.a, 29u)], 4294967295u, u_input.a))));
    let var_3 = Struct_3(Struct_1(select(!(!global3.zz), select(select(global3.yy, global3.yz, global3.zx), !global3.xx, u_input.c.x >= u_input.b), false), ~_wgslsmith_mult_u32(~u_input.d, 0u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + 1613f))) + _wgslsmith_div_f32(-314f, _wgslsmith_f_op_f32(abs(493f)))), _wgslsmith_f_op_f32(f32(-1f) * -396f)), Struct_1(!vec2<bool>(all(vec4<bool>(false, global3.x, true, false)), all(vec2<bool>(global3.x, true))), 62939u), vec4<u32>(reverseBits(var_2.x), 22269u, 1u >> ((select(global2[_wgslsmith_index_u32(17269u, 29u)], 4294967295u, false) & global2[_wgslsmith_index_u32(select(var_2.x, 0u, false), 29u)]) % 32u), max(global2[_wgslsmith_index_u32(u_input.d, 29u)], global2[_wgslsmith_index_u32(20601u, 29u)])), countOneBits(u_input.a));
    var_2 = vec4<u32>(~_wgslsmith_clamp_u32(var_3.a.b, ~firstLeadingBit(var_3.e), countOneBits(var_2.x & var_2.x)), var_2.x, ~1u, 4294967295u);
    return Struct_2(select(select(!select(vec4<bool>(var_3.c.a.x, false, true, true), vec4<bool>(var_3.a.a.x, var_3.c.a.x, false, global3.x), global3.x), select(select(vec4<bool>(false, true, var_3.c.a.x, true), vec4<bool>(global3.x, true, var_3.a.a.x, false), vec4<bool>(global3.x, false, global3.x, var_3.c.a.x)), select(vec4<bool>(global3.x, global3.x, var_3.c.a.x, true), vec4<bool>(true, var_3.a.a.x, false, false), vec4<bool>(true, var_3.a.a.x, var_3.a.a.x, true)), select(vec4<bool>(false, global3.x, global3.x, global3.x), vec4<bool>(false, true, var_3.c.a.x, global3.x), vec4<bool>(true, var_3.a.a.x, var_3.c.a.x, false))), select(select(vec4<bool>(true, true, true, global3.x), vec4<bool>(false, false, true, var_3.c.a.x), vec4<bool>(true, true, false, var_3.a.a.x)), vec4<bool>(var_3.a.a.x, true, global3.x, true), global3.x)), !vec4<bool>(true, all(vec3<bool>(true, true, true)), false, true), select(!vec4<bool>(var_3.a.a.x, false, true, true), select(!vec4<bool>(var_3.a.a.x, var_3.a.a.x, true, var_3.a.a.x), !vec4<bool>(true, true, var_3.a.a.x, global3.x), vec4<bool>(var_3.c.a.x, var_3.c.a.x, false, global3.x)), !all(global3.yz))), var_3.a);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_4) -> Struct_1 {
    let var_0 = func_2();
    global0 = 32932u;
    global3 = select(vec3<bool>(any(vec3<bool>(true, arg_1.b.a.x & false, arg_1.b.a.x)), all(select(!var_0.a, func_2().a, true)), all(var_0.a)), vec3<bool>(arg_1.a.x > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-333f)), _wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x))), arg_0.x, true), !(!select(func_2().a.wyx, vec3<bool>(var_0.b.a.x, false, false), select(var_0.a.zxz, vec3<bool>(arg_1.b.a.x, false, true), arg_0))));
    let var_1 = -vec4<i32>(2147483647i, u_input.b, -(-2147483647i & u_input.b), 0i);
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(arg_1.a * arg_1.a), arg_1.b);
    return arg_1.b;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_4) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_3.a.yy)) * _wgslsmith_f_op_vec2_f32(-arg_3.a.wx)) + vec2<f32>(_wgslsmith_f_op_f32(-arg_3.a.x), 1f))), arg_3.a.zz));
    var var_1 = _wgslsmith_f_op_f32(-arg_3.a.x);
    global0 = ~arg_0;
    global1 = 16229i;
    var var_2 = arg_3;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(209f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 29>();
    let var_0 = countOneBits(firstLeadingBit(u_input.e.x));
    global0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-824f))) * _wgslsmith_f_op_f32(func_4(19297u, Struct_2(select(vec4<bool>(false, global3.x, true, true), vec4<bool>(global3.x, true, global3.x, true), vec4<bool>(global3.x, false, global3.x, true)), Struct_1(vec2<bool>(false, true), 32939u)), Struct_3(func_1(vec3<bool>(global3.x, global3.x, global3.x), Struct_4(vec4<f32>(171f, -2403f, -355f, -251f), Struct_1(global3.zy, global2[_wgslsmith_index_u32(var_0, 29u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(2850f, -644f) * vec2<f32>(365f, 1141f)), Struct_1(vec2<bool>(global3.x, true), u_input.d), firstTrailingBit(vec4<u32>(4294967295u, var_0, 24857u, 0u)), ~var_0), Struct_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-110f, -1258f, -724f, -543f), vec4<f32>(450f, -1101f, 866f, 210f), global3.x)), func_2().b)))), _wgslsmith_f_op_f32(1111f + 693f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_div_i32(~reverseBits(u_input.b), abs(~0i)), -2147483647i, i32(-1i) * -1i, u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1021f, -1386f)))) * vec2<f32>(_wgslsmith_f_op_f32(-var_1), var_1))));
}

