struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(36852u, 49457u);

var<private> global1: array<vec2<f32>, 30>;

var<private> global2: i32 = 0i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> i32 {
    global0 = vec2<u32>(global0.x, 4294967295u);
    var var_0 = vec4<bool>(!((_wgslsmith_mult_i32(u_input.a, u_input.a) != min(-59564i, 20156i)) != all(select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, false), arg_0))), false, arg_0, 112045u < global0.x);
    let var_1 = vec2<u32>(20863u, ~firstLeadingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 0u), u_input.b.yx)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1114f, _wgslsmith_f_op_f32(f32(-1f) * -570f)), 1000f)), -500f, u_input.b);
    var var_3 = countOneBits(abs(~(~(~vec4<i32>(u_input.a, 31133i, 1i, u_input.a)))));
    return -countOneBits(5946i);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = u_input.a;
    let var_1 = arg_0;
    let var_2 = vec4<bool>(arg_1, arg_1, arg_1, true);
    let var_3 = countOneBits(countOneBits(~(~(vec4<u32>(56493u, 1u, 9657u, 15894u) << (vec4<u32>(38968u, 1u, global0.x, 25150u) % vec4<u32>(32u))))));
    global2 = countOneBits(var_0);
    return vec3<u32>(var_3.x & arg_0.c.x, 0u, 1u);
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(arg_0.a)), arg_0.b, func_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b + arg_0.a), arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -130f), _wgslsmith_add_vec3_u32(vec3<u32>(20470u, 72746u, 4933u), ~arg_0.c)), ~(u_input.b.x << (global0.x % 32u)) <= ~global0.x, select(func_3(-19647i < u_input.a), _wgslsmith_add_i32(-14211i, i32(-1i) * -39045i), !(u_input.a > 2147483647i)), Struct_1(1216f, _wgslsmith_f_op_f32(step(arg_0.a, 846f)), u_input.b)));
    var var_1 = _wgslsmith_add_vec2_u32(~(~firstTrailingBit(var_0.c.xz)), arg_0.c.zy);
    global2 = u_input.a;
    global1 = array<vec2<f32>, 30>();
    let var_2 = select(select(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, u_input.a <= u_input.a), vec4<bool>(false, false, select(false, false, true), true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), true), !vec4<bool>(all(vec3<bool>(true, true, false)), 4294967295u > func_4(var_0, false, -53723i, var_0).x, true | any(vec4<bool>(false, false, false, false)), _wgslsmith_f_op_f32(var_0.b + var_0.b) > _wgslsmith_f_op_f32(var_0.b + arg_0.a)), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    return all(vec2<bool>(!(firstTrailingBit(35123i) == firstLeadingBit(1i)), any(vec3<bool>(any(var_2), var_2.x, true))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    global2 = -(~(i32(-1i) * -select(0i, 39786i, true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-692f, 835f, var_0.a))))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-197f, -1734f, arg_1.a), vec3<f32>(var_0.a, -525f, 916f), vec3<bool>(false, arg_0.x, true)))))))));
    var var_2 = reverseBits(firstLeadingBit(u_input.a)) >> (~arg_1.c.x % 32u);
    global0 = u_input.b.xx;
    return u_input.b.x;
}

fn func_1(arg_0: vec4<i32>) -> StorageBuffer {
    var var_0 = u_input.b.x;
    global2 = ~(-arg_0.x);
    global0 = vec2<u32>(func_5(select(vec4<bool>(any(vec3<bool>(true, true, true)), global0.x > 4294967295u, u_input.a == 0i, true), vec4<bool>(func_2(Struct_1(-1000f, 277f, u_input.b)), true, true, any(vec4<bool>(false, false, false, true))), vec4<bool>(true, -2147483647i <= arg_0.x, true, true)), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1000f)), -2051f)), -681f, ~vec3<u32>(33310u, global0.x, u_input.b.x))), 0u);
    var var_1 = vec2<i32>(func_3(!func_2(Struct_1(1659f, -716f, u_input.b))) << (~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 41719u), u_input.b.xz)) % 32u), ~arg_0.x);
    var_1 = ~(arg_0.xy ^ ~(~vec2<i32>(-42881i, -2147483647i)));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(~(~36520u), 30u)] + global1[_wgslsmith_index_u32(~52722u, 30u)]), 83113u, var_1.x, select(select(arg_0.wy | select(vec2<i32>(arg_0.x, var_1.x), vec2<i32>(u_input.a, arg_0.x), vec2<bool>(true, false)), vec2<i32>(arg_0.x, arg_0.x), vec2<bool>(true, true)), vec2<i32>(u_input.a, 16508i << (global0.x % 32u)), select(vec2<bool>(true, true), vec2<bool>(select(false, true, false), u_input.b.x == u_input.b.x), vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~45750i;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -740f, -1134f, 371f), vec4<f32>(287f, 1806f, -110f, -871f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(332f, 811f, 557f, -1000f) * vec4<f32>(381f, -226f, -2165f, -886f))))));
    let var_2 = var_1.x;
    global0 = u_input.b.zz;
    global2 = 2147483647i;
    let x = u_input.a;
    s_output = func_1(firstTrailingBit(~vec4<i32>(u_input.a, 0i, 32958i, u_input.a)) ^ reverseBits(firstTrailingBit(vec4<i32>(u_input.a, -20603i, u_input.a, u_input.a))));
}

