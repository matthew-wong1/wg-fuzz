struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: Struct_2,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(true, false, false, false, false);

var<private> global1: array<vec2<bool>, 2>;

var<private> global2: Struct_3 = Struct_3(0i);

var<private> global3: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(9273u, 0u, 14877u, 1u), vec4<u32>(44131u, 46299u, 11692u, 4294967295u), vec4<u32>(1u, 17759u, 6266u, 0u), vec4<u32>(32532u, 1u, 1129u, 4294967295u), vec4<u32>(4294967295u, 3952u, 69434u, 0u), vec4<u32>(4294967295u, 0u, 1u, 1u), vec4<u32>(5800u, 0u, 127475u, 1u), vec4<u32>(1u, 4294967295u, 8119u, 4294967295u), vec4<u32>(4294967295u, 16889u, 48264u, 4294967295u), vec4<u32>(1u, 0u, 1u, 50734u), vec4<u32>(305u, 22758u, 4294967295u, 8970u), vec4<u32>(25153u, 1u, 0u, 8032u), vec4<u32>(59005u, 1u, 1943u, 42766u), vec4<u32>(13646u, 1u, 0u, 1u), vec4<u32>(50734u, 16156u, 0u, 0u), vec4<u32>(39134u, 0u, 4294967295u, 75633u), vec4<u32>(1u, 1u, 1u, 55817u), vec4<u32>(1u, 1u, 53595u, 1u), vec4<u32>(4294967295u, 54013u, 36094u, 1u), vec4<u32>(566u, 8201u, 0u, 1u), vec4<u32>(31995u, 1u, 1u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 16171u, 8821u), vec4<u32>(0u, 4360u, 70431u, 1u), vec4<u32>(4294967295u, 0u, 1921u, 58202u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec3<i32>) -> Struct_3 {
    let var_0 = true;
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    let var_1 = arg_1.d;
    global2 = arg_2;
    return arg_2;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3) -> bool {
    var var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(arg_0, vec3<u32>(u_input.a, 6521u, min(arg_0.x, ~u_input.a)), vec3<u32>(u_input.a, arg_0.x, 19164u)), select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(1070u, 5u)]), select(select(vec3<bool>(true, true, true), !vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 5u)], global0[_wgslsmith_index_u32(0u, 5u)], false), false), select(!vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 5u)], false), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 5u)], true, global0[_wgslsmith_index_u32(1u, 5u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 5u)], global0[_wgslsmith_index_u32(1u, 5u)])), !vec3<bool>(global0[_wgslsmith_index_u32(90254u, 5u)], global0[_wgslsmith_index_u32(arg_0.x, 5u)], global0[_wgslsmith_index_u32(61906u, 5u)])), !(global0[_wgslsmith_index_u32(arg_0.x, 5u)] != global0[_wgslsmith_index_u32(arg_0.x, 5u)])), true), -abs(~(-1i)));
    global3 = array<vec4<u32>, 24>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -125f), -1783f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -278f), vec2<f32>(-390f, 707f), var_0.b.x))))))));
    global1 = array<vec2<bool>, 2>();
    let var_2 = ~firstLeadingBit(global3[_wgslsmith_index_u32(firstLeadingBit(56564u), 24u)]);
    return true;
}

fn func_1(arg_0: i32) -> Struct_4 {
    let var_0 = arg_0;
    var var_1 = vec2<bool>(select(!func_3(vec3<u32>(u_input.a, 4294967295u, 29398u), func_2(1000f, Struct_4(1368f, vec2<f32>(273f, 648f), arg_0, Struct_2(vec4<f32>(-670f, 1000f, -686f, 266f), Struct_1(vec3<u32>(64948u, u_input.a, 2300u), vec3<bool>(true, true, false), global2.a), u_input.b, vec3<bool>(true, global0[_wgslsmith_index_u32(2940u, 5u)], false), Struct_1(vec3<u32>(4294967295u, 4294967295u, 46301u), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)]), global2.a)), vec2<f32>(-919f, 724f)), Struct_3(arg_0), u_input.b.xyz)), global0[_wgslsmith_index_u32(u_input.a >> (_wgslsmith_clamp_u32(~u_input.a, select(u_input.a, 0u, false), ~99536u) % 32u), 5u)], global0[_wgslsmith_index_u32(40900u, 5u)]), firstLeadingBit(firstTrailingBit(~u_input.a)) <= ~(~u_input.a));
    global0 = array<bool, 5>();
    var var_2 = 0u;
    var_2 = countOneBits(u_input.a);
    return Struct_4(-1141f, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(2119f - -887f), _wgslsmith_f_op_f32(-380f + 1000f))))), abs(((global2.a << (u_input.a % 32u)) >> (4294967295u % 32u)) & ~(~u_input.b.x)), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1086f, 815f, 597f, 1365f)))), Struct_1(~vec3<u32>(73863u, u_input.a, 0u), vec3<bool>(true, true, true), var_0), _wgslsmith_clamp_vec4_i32(abs(u_input.b), u_input.b, vec4<i32>(global2.a, 15792i, -2147483647i, 8471i)) | vec4<i32>(1i, -6871i, func_2(978f, Struct_4(-292f, vec2<f32>(1187f, 1162f), 1i, Struct_2(vec4<f32>(382f, 433f, -224f, 1011f), Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 5u)], true, global0[_wgslsmith_index_u32(4294967295u, 5u)]), 22188i), u_input.b, vec3<bool>(var_1.x, global0[_wgslsmith_index_u32(u_input.a, 5u)], var_1.x), Struct_1(vec3<u32>(87407u, u_input.a, 4294967295u), vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 5u)]), global2.a)), vec2<f32>(1062f, -1756f)), Struct_3(0i), u_input.b.zwy).a, arg_0), select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 5u)], var_1.x, var_1.x), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)], var_1.x), vec3<bool>(true, false, global0[_wgslsmith_index_u32(20319u, 5u)])), vec3<bool>(u_input.a == 39063u, global0[_wgslsmith_index_u32(1u, 5u)], false), true), Struct_1(~(vec3<u32>(4294967295u, 8273u, 0u) & vec3<u32>(u_input.a, u_input.a, 4294967295u)), vec3<bool>(func_3(vec3<u32>(0u, 15339u, u_input.a), Struct_3(-7687i)), true, var_1.x), _wgslsmith_div_i32(-11332i, var_0) | ~global2.a)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-1194f, _wgslsmith_f_op_f32(-1129f * -759f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1568f, -347f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1123f, -526f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.b.x);
    let var_1 = Struct_4(614f, _wgslsmith_f_op_vec2_f32(var_0.e + var_0.e), 1i, var_0.d, var_0.d.a.zy);
    let var_2 = var_1.d;
    var var_3 = var_0.d.a.x;
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a), 452f)))))));
    var var_5 = false;
    let var_6 = firstTrailingBit(var_2.c);
    var var_7 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_4, var_0.e.x)))), var_4);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(u_input.a, 32732u, ~var_2.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -289f))), var_1.d.a, 61750u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_0.d.a.zyy))));
}

