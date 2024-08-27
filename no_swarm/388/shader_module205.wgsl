struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-853f, 1604f, 956f, 1196f), false, 436f);

var<private> global1: array<f32, 10> = array<f32, 10>(-347f, -1345f, 2096f, 1434f, 1359f, -229f, -257f, 1354f, -1000f, 1656f);

var<private> global2: Struct_2 = Struct_2(vec2<f32>(-1167f, 966f), 27210u);

var<private> global3: array<u32, 17> = array<u32, 17>(14283u, 13337u, 0u, 13003u, 12640u, 24931u, 86906u, 68588u, 1u, 0u, 0u, 1u, 8049u, 4294967295u, 0u, 104985u, 32628u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>) -> i32 {
    return -22343i;
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> f32 {
    let var_0 = min(vec2<u32>(global2.b, 4294967295u), _wgslsmith_div_vec2_u32(~(~u_input.a), firstTrailingBit(vec2<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 17u)], global3[_wgslsmith_index_u32(global2.b, 17u)]))) >> (abs(~(vec2<u32>(global3[_wgslsmith_index_u32(27320u, 17u)], 58266u) >> (u_input.a % vec2<u32>(32u)))) % vec2<u32>(32u)));
    let var_1 = ~select(vec4<u32>(global3[_wgslsmith_index_u32(reverseBits(~global3[_wgslsmith_index_u32(4294967295u, 17u)]), 17u)], firstTrailingBit(global2.b) & global3[_wgslsmith_index_u32(global2.b | var_0.x, 17u)], _wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, arg_0.b), global3[_wgslsmith_index_u32(0u, 17u)]), _wgslsmith_dot_vec2_u32(~var_0, select(vec2<u32>(global2.b, arg_0.b), var_0, global0.b))), select(~_wgslsmith_sub_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(arg_0.b, 17u)], 0u, var_0.x, 14017u), vec4<u32>(1u, 0u, var_0.x, 10818u)), ~vec4<u32>(0u, 29077u, u_input.a.x, 36123u), global0.b), global0.b);
    var var_2 = abs(~u_input.a);
    var var_3 = var_0.x;
    var var_4 = Struct_1(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, 179f) + 946f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a.x)))) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.c * global2.a.x), _wgslsmith_f_op_f32(-1000f - 1f))), _wgslsmith_f_op_f32(ceil(global0.c)));
    return _wgslsmith_f_op_f32(abs(var_4.c));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(70941i, -435i), func_2(vec2<bool>(false | global0.b, true), -vec3<i32>(40648i, 0i, 11144i))), 1i);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) - _wgslsmith_div_f32(global2.a.x, -1143f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-162f - -1094f) + _wgslsmith_f_op_f32(func_3(Struct_2(vec2<f32>(188f, -1269f), 4294967295u), 2147483647i))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(16267u, countOneBits(1u)), 10u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.a.x)))))));
    global0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, var_1.x, global0.a.x, global0.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, var_1.x, 1232f, global1[_wgslsmith_index_u32(1u, 10u)]) - global0.a) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, 1000f, global1[_wgslsmith_index_u32(global2.b, 10u)], global1[_wgslsmith_index_u32(1u, 10u)]) * vec4<f32>(307f, 570f, 1000f, var_1.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -565f, var_1.x, -1230f) - vec4<f32>(global1[_wgslsmith_index_u32(0u, 10u)], global0.a.x, var_1.x, 1138f)), _wgslsmith_f_op_vec4_f32(select(global0.a, global0.a, vec4<bool>(global0.b, false, global0.b, global0.b)))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(func_3(Struct_2(vec2<f32>(global0.c, 693f), u_input.a.x), -2147483647i)), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(35628u, 10u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 17u)], 10u)]), _wgslsmith_f_op_f32(sign(global2.a.x)))))), global0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), global1[_wgslsmith_index_u32(21609u, 10u)]));
    let var_2 = Struct_2(var_1.xz, _wgslsmith_sub_u32(u_input.a.x, abs(reverseBits(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(13258u, 17u)], global2.b)))));
    global3 = array<u32, 17>();
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(1239f, 1f, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(29004u, 17u)], 10u)]);
    global3 = array<u32, 17>();
    global3 = array<u32, 17>();
    var var_1 = func_1();
    let var_2 = 1i;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(global0.a, global0.a, vec4<bool>(true, global0.b, true, false))), _wgslsmith_f_op_vec4_f32(-global0.a))))))), !(1446f > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a.x)))), _wgslsmith_f_op_f32(abs(var_0.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), global0.b, _wgslsmith_f_op_f32(global2.a.x + -415f));
    let var_4 = !(!(!vec3<bool>(all(vec2<bool>(var_3.b, false)), all(vec4<bool>(true, global0.b, false, global0.b)), any(vec3<bool>(false, var_3.b, var_3.b)))));
    global3 = array<u32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32((_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(global3[_wgslsmith_index_u32(36287u, 17u)], 1u), vec2<u32>(20444u, 4294967295u)) >> (vec2<u32>(u_input.a.x, 7382u) % vec2<u32>(32u))) << (u_input.a % vec2<u32>(32u)), ~u_input.a), 10u)]);
}

