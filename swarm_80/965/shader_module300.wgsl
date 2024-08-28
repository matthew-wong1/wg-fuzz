struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 30>;

var<private> global1: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(-22965i, -43010i), vec2<i32>(-6705i, i32(-2147483648)), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(0i, 1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-47277i, 2147483647i), vec2<i32>(8091i, -1i), vec2<i32>(7359i, -1i), vec2<i32>(-19690i, -11416i), vec2<i32>(0i, 5140i), vec2<i32>(-20957i, -52739i), vec2<i32>(51780i, i32(-2147483648)));

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<bool>(false, true, true), true), Struct_1(vec3<bool>(false, true, true), true), Struct_1(vec3<bool>(false, true, false), false), Struct_1(vec3<bool>(true, false, true), false), Struct_1(vec3<bool>(false, false, false), false), Struct_1(vec3<bool>(true, false, true), true), Struct_1(vec3<bool>(false, true, false), false), Struct_1(vec3<bool>(false, true, false), false), Struct_1(vec3<bool>(false, false, false), false), Struct_1(vec3<bool>(true, false, false), true), Struct_1(vec3<bool>(false, false, false), false), Struct_1(vec3<bool>(true, true, true), false), Struct_1(vec3<bool>(true, true, false), true), Struct_1(vec3<bool>(true, false, false), false), Struct_1(vec3<bool>(false, true, false), true), Struct_1(vec3<bool>(false, true, false), false));

var<private> global3: array<i32, 2>;

var<private> global4: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = ~vec2<u32>(1u, _wgslsmith_add_u32(arg_0 >> (11763u % 32u), ~u_input.b.x)) & vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, reverseBits(~42u)), 0u);
    var var_1 = 20784i;
    global4 = array<vec3<bool>, 28>();
    let var_2 = global2[_wgslsmith_index_u32(~firstTrailingBit(var_0.x), 16u)];
    let var_3 = global2[_wgslsmith_index_u32(55637u, 16u)];
    return Struct_1(!(!(!(!vec3<bool>(false, var_3.b, false)))), all(vec3<bool>(true, true && var_2.a.x, true)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = !vec2<bool>(true, any(arg_1.a.zz));
    var var_1 = func_2(firstTrailingBit(1u));
    let var_2 = firstLeadingBit(reverseBits(_wgslsmith_mod_vec4_i32(-vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2147483647i, global3[_wgslsmith_index_u32(u_input.b.x, 2u)], 2147483647i) | firstTrailingBit(vec4<i32>(1i, -41869i, -43704i, -2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(u_input.b.x, 2u)], 0i, global3[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec4<i32>(-36861i, 57698i, 1i, 11565i)) >> (vec4<u32>(4294967295u, 1u, 26921u, u_input.b.x) % vec4<u32>(32u)))));
    var var_3 = func_2((_wgslsmith_div_u32(u_input.a.x & 4294967295u, 111917u) ^ _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(u_input.b.wwx, vec3<u32>(u_input.a.x, 1u, u_input.b.x)))) << (1u % 32u));
    global4 = array<vec3<bool>, 28>();
    return vec4<bool>(arg_3.a.x, false, false, false);
}

fn func_1() -> vec3<bool> {
    var var_0 = select(vec4<bool>(true, true, true, true), !select(func_3(Struct_1(vec3<bool>(true, false, true), false), func_2(u_input.a.x), Struct_1(vec3<bool>(true, false, true), true), global2[_wgslsmith_index_u32(u_input.a.x, 16u)]), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !(!func_3(global2[_wgslsmith_index_u32(0u, 16u)], Struct_1(global4[_wgslsmith_index_u32(10303u, 28u)], false), func_2(1u), Struct_1(global4[_wgslsmith_index_u32(4294967295u, 28u)], false))));
    let var_1 = Struct_1(var_0.wyx, func_3(Struct_1(!global4[_wgslsmith_index_u32(u_input.a.x, 28u)], any(!var_0.xw)), global2[_wgslsmith_index_u32(~23913u, 16u)], func_2(~u_input.a.x), Struct_1(!func_3(global2[_wgslsmith_index_u32(35403u, 16u)], Struct_1(vec3<bool>(var_0.x, var_0.x, true), true), global2[_wgslsmith_index_u32(u_input.b.x, 16u)], global2[_wgslsmith_index_u32(1u, 16u)]).yyx, !var_0.x)).x);
    var var_2 = global4[_wgslsmith_index_u32(1u, 28u)];
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-733f, -748f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1412f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-665f, -184f))))))));
    global4 = array<vec3<bool>, 28>();
    return global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(min(4294967295u, _wgslsmith_div_u32(0u, 1u)), ~81168u, u_input.a.x), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(u_input.a.x, u_input.a.x, 320u)), u_input.a)), _wgslsmith_mod_u32(u_input.a.x, select(select(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_add_u32(u_input.b.x, 22816u), true), ~0u, var_0.x))), 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<bool>, 28>();
    global3 = array<i32, 2>();
    let var_0 = vec2<u32>(10832u, 1u);
    var var_1 = Struct_1(select(!global4[_wgslsmith_index_u32((var_0.x | u_input.b.x) & ~0u, 28u)], func_1(), func_1().x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1643f + 1999f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1301f)), _wgslsmith_f_op_f32(sign(-1000f)))))) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1137f))));
    var var_2 = true;
    var var_3 = global2[_wgslsmith_index_u32(1u, 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(vec2<u32>(62583u, var_0.x), ~firstTrailingBit(select(global0[_wgslsmith_index_u32(4294967295u, 30u)], vec2<u32>(0u, 15430u), vec2<bool>(var_3.a.x, var_1.b)))));
}

