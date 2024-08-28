struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(vec4<i32>(57224i, 1i, 1i, _wgslsmith_sub_i32(-2147483647i, countOneBits(1i)) >> (u_input.a % 32u)), vec3<bool>(~u_input.a >= 1u, any(vec2<bool>(false, false)) || true, any(vec3<bool>(true, true, true))));
    var var_1 = ~_wgslsmith_add_u32(~u_input.a, ~(~u_input.a));
    global0 = array<vec3<bool>, 13>();
    var_0 = Struct_1(var_0.a, !vec3<bool>(false | !var_0.b.x, var_0.b.x, all(select(vec4<bool>(true, true, var_0.b.x, false), vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x), true))));
    var_0 = Struct_1(vec4<i32>(~max(~(-2147483647i), var_0.a.x), -var_0.a.x, 0i, _wgslsmith_dot_vec2_i32(abs(var_0.a.yz), var_0.a.wy)), global0[_wgslsmith_index_u32(firstLeadingBit(~4294967295u), 13u)]);
    return reverseBits(46812i);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> vec2<bool> {
    let var_0 = arg_1;
    var var_1 = Struct_1(arg_0.a >> (~(vec4<u32>(4294967295u, var_0, 1u, 1u) | vec4<u32>(1u, 1u, 21871u, 6960u)) % vec4<u32>(32u)), select(arg_0.b, !select(select(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), vec3<bool>(false, arg_0.b.x, true), arg_0.b.x), select(arg_0.b, vec3<bool>(false, false, true), global0[_wgslsmith_index_u32(0u, 13u)]), arg_0.b.x), all(vec4<bool>(true, true, true, true))));
    var_1 = Struct_1(var_1.a, vec3<bool>(all(arg_0.b.yz), true, true | var_1.b.x));
    let var_2 = func_3();
    var var_3 = Struct_1(arg_0.a, select(vec3<bool>(all(vec4<bool>(false, true, arg_0.b.x, true)), true, true), var_1.b, var_1.b.x));
    return !vec2<bool>(false, ((var_1.a.x ^ arg_0.a.x) << (4294967295u % 32u)) >= _wgslsmith_mult_i32(32646i, ~arg_2));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = arg_3.b.x;
    global0 = array<vec3<bool>, 13>();
    let var_1 = Struct_1(arg_3.a, select(arg_3.b, select(!select(vec3<bool>(arg_3.b.x, false, false), vec3<bool>(arg_3.b.x, arg_3.b.x, arg_3.b.x), arg_3.b.x), vec3<bool>(any(vec4<bool>(arg_3.b.x, var_0, true, var_0)), true | arg_3.b.x, true), vec3<bool>(any(vec3<bool>(true, true, false)), true, var_0)), var_0));
    let var_2 = arg_3.a.x;
    let var_3 = true;
    return select(!func_2(Struct_1(~arg_3.a, select(arg_3.b, vec3<bool>(var_0, true, true), var_0)), u_input.a, 1i), vec2<bool>(4294967295u > _wgslsmith_dot_vec4_u32(~arg_1, vec4<u32>(43943u, 69380u, arg_1.x, 34446u)), false), func_2(Struct_1(arg_3.a & ~vec4<i32>(2147483647i, 2147483647i, var_2, arg_3.a.x), !vec3<bool>(var_0, false, false)), ~(~arg_1.x), -arg_3.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 13>();
    let var_0 = select(!func_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2092f, 1814f, 818f) + vec3<f32>(259f, 796f, -138f)))), ~vec4<u32>(0u, u_input.a, u_input.a, 17877u) >> (vec4<u32>(u_input.a, 4294967295u, 1u, 0u) % vec4<u32>(32u)), firstTrailingBit(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 9809u), vec2<bool>(false, true))), Struct_1(select(vec4<i32>(-24495i, -2147483647i, -2147483647i, -3447i), vec4<i32>(-1i, 1i, 82469i, 2147483647i), true), !global0[_wgslsmith_index_u32(13833u, 13u)])), vec2<bool>(true, true), vec2<bool>(true, true));
    var var_1 = select(select(!vec4<bool>(true, any(global0[_wgslsmith_index_u32(u_input.a, 13u)]), false, var_0.x), !(!(!vec4<bool>(false, var_0.x, var_0.x, var_0.x))), var_0.x), select(select(vec4<bool>(var_0.x, !var_0.x, all(vec2<bool>(var_0.x, var_0.x)), var_0.x), !select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(var_0.x, false, var_0.x, true), true), var_0.x), vec4<bool>(true, true, true, var_0.x), select(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), !vec4<bool>(var_0.x, true, var_0.x, var_0.x), false), select(!vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false), false | var_0.x), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, true, true, var_0.x)), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, true, var_0.x, true), vec4<bool>(true, false, var_0.x, var_0.x)), select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, true, true, true), true)))), false);
    let var_2 = min(_wgslsmith_div_vec4_u32(select(vec4<u32>(42277u, firstLeadingBit(0u), ~11812u, ~4294967295u), firstLeadingBit(vec4<u32>(u_input.a, 30781u, 4294967295u, 1u) ^ vec4<u32>(1u, 45549u, 59726u, u_input.a)), select(select(vec4<bool>(false, var_0.x, var_1.x, true), vec4<bool>(false, var_1.x, var_1.x, true), true), vec4<bool>(var_0.x, false, var_0.x, var_1.x), !vec4<bool>(var_0.x, var_1.x, false, var_1.x))), vec4<u32>(1u, ~4294967295u, select(~u_input.a, countOneBits(72604u), true), ~reverseBits(u_input.a))), firstLeadingBit(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 46754u, u_input.a, 4294967295u), vec4<u32>(u_input.a, 1u, 40947u, u_input.a)))));
    var var_3 = Struct_1(reverseBits(vec4<i32>(-abs(18584i), -(~41103i), -2147483647i, _wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(7349i, -2147483647i, 37421i), vec3<i32>(0i, 47270i, 38720i))))), vec3<bool>(var_0.x, all(var_1.xxz), var_1.x & !all(vec4<bool>(var_0.x, false, var_0.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, -var_3.a.yy);
}

