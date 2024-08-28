struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_3, 32>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<u32>(14560u, 77480u, 4294967295u, 0u), -836f), vec4<f32>(639f, 1471f, 768f, -725f), vec3<bool>(true, true, true), Struct_1(vec4<u32>(0u, 1u, 78227u, 2291u), 1000f));

var<private> global3: array<i32, 12>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    let var_0 = vec4<u32>(0u, _wgslsmith_dot_vec2_u32(~abs(arg_3.a.yz), ~abs(vec2<u32>(1u, 1u))), u_input.a, ~(~0u));
    let var_1 = arg_2.b;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_2.b.b.x)))) + 701f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-799f - arg_1.x)), 145f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2199f)) * _wgslsmith_div_f32(598f, arg_3.b));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: u32, arg_3: i32) -> Struct_2 {
    let var_0 = Struct_1(~_wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(arg_1.x), arg_2, 0u >> (arg_1.x % 32u), global2.d.a.x), global2.d.a), global2.d.b);
    global3 = array<i32, 12>();
    let var_1 = -2147483647i;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-global2.b.x)), arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - _wgslsmith_div_f32(global2.a.b, global2.a.b)) * _wgslsmith_f_op_f32(func_3(arg_1.x, global2.b.wwz, Struct_3(Struct_1(var_0.a, -865f), Struct_2(var_0, vec4<f32>(arg_0, arg_0, 1526f, arg_0), vec3<bool>(global2.c.x, global2.c.x, global2.c.x), global2.a), Struct_2(global2.d, vec4<f32>(1000f, arg_0, var_0.b, -130f), vec3<bool>(global2.c.x, false, true), var_0)), Struct_1(global2.a.a, 726f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.d.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1138f))))));
    var var_2 = Struct_3(var_0, Struct_2(Struct_1(_wgslsmith_div_vec4_u32(select(vec4<u32>(var_0.a.x, 1u, 15454u, 1u), vec4<u32>(arg_2, 20068u, 54800u, 1u), vec4<bool>(false, global2.c.x, global2.c.x, true)), vec4<u32>(27908u, 17845u, u_input.a, arg_2)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_0))))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-128f)), _wgslsmith_div_f32(var_0.b, -1745f), 1223f, 1667f), select(!global2.c, select(global2.c, select(global2.c, global2.c, global2.c.x), select(global2.c.x, false, true)), any(!global2.c)), Struct_1(global2.d.a, 536f)), Struct_2(global2.a, vec4<f32>(-2653f, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(step(-1027f, -965f))), _wgslsmith_div_f32(-250f, _wgslsmith_f_op_f32(max(global2.b.x, -253f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1085f))), !(!select(global2.c, global2.c, global2.c)), global2.d));
    return Struct_2(var_0, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(453f, var_2.c.b.x, -789f, global2.d.b)))))), !var_2.b.c, Struct_1(~(~(var_2.a.a & vec4<u32>(global2.d.a.x, u_input.b.x, 1u, 6054u))), _wgslsmith_f_op_f32(1344f * -1000f)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = vec4<u32>(~min(var_0.a.a.x, ~18254u) & global2.d.a.x, 0u, ~(((4294967295u & arg_0.d.a.x) >> (32320u % 32u)) & arg_0.d.a.x), countOneBits(_wgslsmith_mod_u32(firstTrailingBit(arg_0.a.a.x), 1u)) << (u_input.b.x % 32u));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -633f);
    var var_2 = Struct_2(Struct_1(reverseBits(vec4<u32>(u_input.a, u_input.a & arg_0.d.a.x, global2.d.a.x, firstLeadingBit(arg_0.d.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a.b))) - 141f)), _wgslsmith_div_vec4_f32(var_0.b, arg_0.b), !(!(!func_2(var_0.a.b, var_0.a.a.zyx, 1u, -1i).c)), Struct_1(arg_0.a.a, _wgslsmith_f_op_f32(func_3(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.a.x, 24897u), var_1.wx), 1u), _wgslsmith_f_op_vec3_f32(step(var_0.b.wzy, vec3<f32>(var_0.d.b, var_0.a.b, 1506f))), global1[_wgslsmith_index_u32(global2.d.a.x, 32u)], global2.d))));
    let var_3 = arg_0.a.a.x;
    return Struct_2(global2.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.b, -2087f, global2.d.b, var_2.d.b) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(640f, 453f, arg_0.a.b, -620f))), var_2.b), arg_0.b)), select(!vec3<bool>(var_2.c.x, -41971i > global3[_wgslsmith_index_u32(1u, 12u)], all(global2.c)), global2.c, var_2.c.x), arg_0.a);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(global2.d, func_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -313f) - _wgslsmith_div_f32(global2.d.b, global2.d.b)), ~vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), ~u_input.b.x, 1i), -u_input.d), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) - _wgslsmith_f_op_f32(f32(-1f) * -1170f)), vec3<u32>(_wgslsmith_clamp_u32(global2.a.a.x, 67027u, u_input.b.x), _wgslsmith_dot_vec2_u32(~global2.a.a.xz, ~u_input.b.zx), 13027u), 4294967295u, ~reverseBits(1i)));
    global0 = _wgslsmith_f_op_f32(select(-1048f, _wgslsmith_div_f32(975f, var_0.a.b), !(!((var_0.c.c.x | false) | true))));
    let var_1 = global1[_wgslsmith_index_u32(abs(min(~0u, 16043u)), 32u)];
    global1 = array<Struct_3, 32>();
    var var_2 = select(var_0.c.c, func_4(func_2(1026f, var_0.c.a.a.yxw, ~1u, i32(-1i) * -2147483647i), u_input.d).c, var_1.c.c);
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(global2.a.b - global2.a.b);
    var var_1 = func_1();
    global0 = 414f;
    var_1 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(7991u, ~func_4(Struct_2(global2.d, vec4<f32>(2297f, global2.a.b, 248f, global2.a.b), global2.c, Struct_1(global2.a.a, global2.b.x)), vec4<i32>(0i, global3[_wgslsmith_index_u32(0u, 12u)], global3[_wgslsmith_index_u32(global2.d.a.x, 12u)], 5883i)).d.a.x, _wgslsmith_add_u32(~4294967295u, 0u), ~func_2(var_1.b, vec3<u32>(var_1.a.x, 46921u, 67838u), 13887u, 22634i).a.a.x), ~global2.a.a & var_1.a), _wgslsmith_f_op_f32(sign(func_1().b)));
    var var_2 = vec4<i32>(-71019i, _wgslsmith_div_i32(global3[_wgslsmith_index_u32(global2.d.a.x, 12u)], _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(-10996i, u_input.c.x, global3[_wgslsmith_index_u32(u_input.b.x, 12u)]), vec3<i32>(u_input.d.x, u_input.d.x, 1i), global2.c.x), min(vec3<i32>(-49874i, u_input.d.x, global3[_wgslsmith_index_u32(27111u, 12u)]), vec3<i32>(u_input.c.x, 13145i, u_input.c.x)), vec3<i32>(u_input.c.x, 0i, 5253i)), u_input.c)), u_input.d.x, global3[_wgslsmith_index_u32(var_1.a.x, 12u)]);
    global3 = array<i32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(-314f, _wgslsmith_div_i32(_wgslsmith_add_i32(countOneBits(_wgslsmith_add_i32(-28947i, var_2.x)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(var_1.a.x, 12u)]), var_2.yw)), -1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-264f + global2.d.b) + 1754f), -13717i);
}

