struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 32>;

var<private> global1: vec3<u32> = vec3<u32>(1877u, 65076u, 4294967295u);

var<private> global2: array<u32, 13> = array<u32, 13>(47962u, 1u, 34300u, 96352u, 30077u, 63932u, 92644u, 68406u, 4294967295u, 4294967295u, 59758u, 4294967295u, 24936u);

var<private> global3: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(49514u), Struct_2(136004u), Struct_2(15340u), Struct_2(1u), Struct_2(1u), Struct_2(0u), Struct_2(26415u), Struct_2(4294967295u), Struct_2(40546u), Struct_2(58199u), Struct_2(24810u));

var<private> global4: Struct_1 = Struct_1(vec3<i32>(i32(-2147483648), 50224i, -1i), vec3<f32>(181f, -1000f, 1630f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: Struct_3) -> bool {
    global4 = arg_0.b;
    var var_0 = global3[_wgslsmith_index_u32(u_input.a.x, 11u)];
    let var_1 = global3[_wgslsmith_index_u32(1u, 11u)];
    let var_2 = ~vec4<u32>(var_1.a, countOneBits(~2273u), 1u, 0u) ^ vec4<u32>(var_0.a, global2[_wgslsmith_index_u32(global1.x, 13u)], ~(~(~global1.x)), var_1.a);
    let var_3 = true;
    return any(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, var_3), vec3<bool>(var_3, var_3, var_3), true), vec3<bool>(var_3, var_3, true), vec3<bool>(true, false, false)), vec3<bool>(any(vec4<bool>(false, var_3, true, var_3)), true, !var_3)));
}

fn func_3(arg_0: bool) -> Struct_1 {
    let var_0 = global4.a.x != 0i;
    var var_1 = reverseBits(global4.a.x);
    let var_2 = global3[_wgslsmith_index_u32(u_input.a.x, 11u)];
    var var_3 = !select(select(select(select(vec2<bool>(arg_0, var_0), vec2<bool>(var_0, true), vec2<bool>(var_0, false)), !vec2<bool>(true, arg_0), vec2<bool>(var_0, arg_0)), vec2<bool>(false, all(vec3<bool>(var_0, false, false))), all(vec3<bool>(var_0, var_0, arg_0))), select(select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(arg_0, false), vec2<bool>(var_0, false), true), vec2<bool>(true, true)), vec2<bool>(var_0, !arg_0), var_0), false);
    let var_4 = _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(reverseBits(max(~(~0u), global2[_wgslsmith_index_u32(firstLeadingBit(~u_input.a.x), 13u)])), 32u)]);
    return Struct_1(global4.a >> (~vec3<u32>(4294967295u, global1.x >> (6617u % 32u), 34259u | var_2.a) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2017f, _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(f32(-1f) * -848f))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32) -> vec3<u32> {
    global1 = ~firstLeadingBit(firstTrailingBit(vec3<u32>(1u, 0u, 4294967295u)));
    var var_0 = Struct_2(~_wgslsmith_clamp_u32(global1.x, _wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, global2[_wgslsmith_index_u32(1u, 13u)]), global1.yx)), abs(_wgslsmith_dot_vec2_u32(global1.yy, u_input.a))));
    var var_1 = func_3(func_2(arg_0));
    let var_2 = Struct_3(var_1.b.x, func_3(!(true && (-40227i < arg_2))));
    let var_3 = !select(vec3<bool>(func_2(Struct_3(361f, arg_1.b)) != false, false | (global2[_wgslsmith_index_u32(4294967295u, 13u)] > 0u), true), vec3<bool>(any(vec2<bool>(true, true)), false, true), select(all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), false, func_2(Struct_3(arg_0.a, var_2.b))));
    return vec3<u32>(~4294967295u, 41980u, ~(~(~(~1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_i32(~vec2<i32>(global4.a.x, u_input.b.x), ~_wgslsmith_mod_vec2_i32(global4.a.yy, vec2<i32>(0i, 0i)) & ~global4.a.yx);
    var var_1 = vec2<bool>(true, false);
    global1 = _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(~4294967295u, u_input.a.x, 4294967295u), ~(vec3<u32>(21822u, global1.x, u_input.a.x) & vec3<u32>(u_input.a.x, global1.x, global1.x)), vec3<bool>(global4.b.x == 893f, global4.b.x != 1338f, all(vec4<bool>(true, true, var_1.x, false)))), (func_1(Struct_3(-167f, Struct_1(global4.a, global0[_wgslsmith_index_u32(53740u, 32u)])), Struct_3(global4.b.x, Struct_1(vec3<i32>(var_0.x, global4.a.x, 17009i), vec3<f32>(255f, global4.b.x, -262f))), u_input.b.x) | vec3<u32>(4294967295u, u_input.a.x, global1.x)) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(20922u, global1.x, 0u), vec3<u32>(u_input.a.x, u_input.a.x, 16325u), vec3<u32>(u_input.a.x, u_input.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 13u)])), _wgslsmith_add_vec3_u32(vec3<u32>(global1.x, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 13u)], 1u))) % vec3<u32>(32u)), ~(~abs(vec3<u32>(u_input.a.x, 68154u, u_input.a.x)))), vec3<u32>(global1.x, abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.x, u_input.a.x), vec3<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], 1u, 34580u)), _wgslsmith_add_u32(global1.x, 17964u))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, ~159u), 13u)] | ~(~4294967295u)));
    var var_2 = _wgslsmith_sub_i32(func_3(true).a.x, u_input.b.x);
    let var_3 = vec2<bool>(var_1.x, false);
    global3 = array<Struct_2, 11>();
    let var_4 = vec2<bool>(all(var_3), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b.x * -184f) * 957f) < global4.b.x));
    let var_5 = ~(~(-var_0.x));
    var var_6 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -443f), Struct_1(vec3<i32>(u_input.b.x, firstTrailingBit(firstTrailingBit(var_0.x)), 1i), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-207f, 404f, global4.b.x)), global4.b), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(abs(global1.x), 32u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<i32>(-2147483647i, abs(u_input.b.x), -2147483647i, var_0.x)));
}

