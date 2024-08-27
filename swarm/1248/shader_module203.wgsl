struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<u32, 22>;

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(-1i), Struct_1(30378i), Struct_1(-29378i), Struct_1(0i), Struct_1(12767i), Struct_1(-79378i), Struct_1(-13599i), Struct_1(1i), Struct_1(-14143i), Struct_1(i32(-2147483648)), Struct_1(-78151i), Struct_1(2147483647i), Struct_1(2147483647i), Struct_1(0i), Struct_1(-1i), Struct_1(-25582i), Struct_1(1i), Struct_1(-45592i), Struct_1(-3551i), Struct_1(-15134i), Struct_1(0i), Struct_1(8111i), Struct_1(1i), Struct_1(-12612i), Struct_1(2147483647i), Struct_1(-15945i), Struct_1(2147483647i), Struct_1(-49688i), Struct_1(2147483647i), Struct_1(33680i), Struct_1(48396i));

var<private> global3: Struct_1 = Struct_1(-11681i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = Struct_5(~vec4<u32>(~min(1u, u_input.c.x), ~10478u, ~(1u & u_input.d.x), u_input.d.x), global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, ~global1[_wgslsmith_index_u32(u_input.d.x, 22u)] >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], 37905u, u_input.d.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 22u)], 22u)], 22u)]), vec4<u32>(57335u, global1[_wgslsmith_index_u32(u_input.d.x, 22u)], u_input.d.x, global1[_wgslsmith_index_u32(0u, 22u)])) % 32u)), 22u)], 31u)], arg_1);
    global2 = array<Struct_1, 31>();
    global1 = array<u32, 22>();
    var var_1 = Struct_1(var_0.b.a ^ -23920i);
    let var_2 = 0u;
    return vec2<bool>(true, !arg_1.a.x);
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_5(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(reverseBits(1u), 22u)], firstLeadingBit(global1[_wgslsmith_index_u32(4294967295u, 22u)]), u_input.d.x, 150747u), u_input.c), ~firstTrailingBit(countOneBits(vec4<u32>(31098u, global1[_wgslsmith_index_u32(1u, 22u)], 10832u, 4294967295u)))), Struct_1(-global3.a), Struct_2(select(select(vec2<bool>(false, true), func_3(vec2<f32>(551f, 454f), Struct_2(vec2<bool>(false, false), 191f)), true), !select(vec2<bool>(false, false), vec2<bool>(false, true), true), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-429f + -2019f)))));
    global1 = array<u32, 22>();
    var var_1 = Struct_4(Struct_2(select(!func_3(vec2<f32>(980f, var_0.c.b), Struct_2(var_0.c.a, 1319f)), var_0.c.a, (var_0.a.x >= u_input.c.x) & true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c.b)) * var_0.c.b), var_0.c.b)), var_0.b);
    var var_2 = var_0.c;
    global1 = array<u32, 22>();
    return var_0;
}

fn func_4(arg_0: Struct_5) -> vec4<bool> {
    let var_0 = ~vec4<u32>(5952u, 51342u, arg_0.a.x, 4294967295u);
    global3 = func_2().b;
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c.b))), 1996f, 860f, _wgslsmith_f_op_f32(sign(arg_0.c.b))))));
    var var_2 = _wgslsmith_f_op_f32(-390f * _wgslsmith_f_op_f32(min(func_2().c.b, -408f)));
    var var_3 = 4294967295u;
    return !select(vec4<bool>(all(vec2<bool>(false, arg_0.c.a.x)), false, all(vec2<bool>(arg_0.c.a.x, arg_0.c.a.x)), arg_0.c.a.x), select(vec4<bool>(!arg_0.c.a.x, true, false, true), vec4<bool>(arg_0.c.a.x, arg_0.c.a.x, arg_0.c.a.x, arg_0.c.a.x), arg_0.c.a.x), !select(vec4<bool>(true, true, arg_0.c.a.x, true), vec4<bool>(arg_0.c.a.x, false, arg_0.c.a.x, arg_0.c.a.x), all(arg_0.c.a)));
}

fn func_1() -> bool {
    global0 = false;
    var var_0 = ~28008u;
    let var_1 = !all(!func_4(func_2()));
    let var_2 = global3.a;
    global0 = !all(vec4<bool>(false, var_1, var_1, all(vec2<bool>(true, true))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<bool>(func_1(), true), 436f);
    global1 = array<u32, 22>();
    global2 = array<Struct_1, 31>();
    var var_1 = global1[_wgslsmith_index_u32(~firstLeadingBit(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34970u, 22u)], 22u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 22u)] << (global1[_wgslsmith_index_u32(u_input.d.x, 22u)] % 32u), 22u)]), 22u)], ~1u), 22u)]), 22u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-667f, var_0.b, var_0.b, var_0.b), vec4<f32>(var_0.b, 434f, -173f, 1729f), false)), vec4<f32>(838f, 862f, var_0.b, 146f))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(180f, -322f, -331f, var_0.b))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(182f, var_0.b, var_0.b, -1000f))))))));
    global3 = global2[_wgslsmith_index_u32(0u, 31u)];
    global1 = array<u32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(select(~u_input.c, min(abs(select(u_input.c, u_input.c, true)), ~(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.d.x, 3292u))), !var_0.a.x), vec4<f32>(741f, _wgslsmith_f_op_f32(-var_0.b), func_2().c.b, 826f), -2062f, -1i);
}

