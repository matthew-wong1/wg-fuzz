struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec2<i32>(-1i, i32(-2147483648)), -14288i, true), Struct_1(vec2<i32>(641i, -1i), 0i, false), Struct_1(vec2<i32>(2147483647i, 0i), -3382i, true), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 31290i, true), Struct_1(vec2<i32>(36063i, 2147483647i), -1i, false), Struct_1(vec2<i32>(-1i, i32(-2147483648)), 2147483647i, true), Struct_1(vec2<i32>(20292i, 0i), i32(-2147483648), false), Struct_1(vec2<i32>(-1i, -39923i), 1i, false), Struct_1(vec2<i32>(1i, 13735i), 2147483647i, true), Struct_1(vec2<i32>(62155i, -1i), 56078i, false), Struct_1(vec2<i32>(i32(-2147483648), 1i), -29677i, true), Struct_1(vec2<i32>(-7991i, 18269i), -1i, true), Struct_1(vec2<i32>(0i, 16260i), -31946i, false), Struct_1(vec2<i32>(15072i, 30495i), i32(-2147483648), true), Struct_1(vec2<i32>(1i, 15427i), -1i, true), Struct_1(vec2<i32>(12188i, 1i), 25120i, false), Struct_1(vec2<i32>(2147483647i, 0i), -1i, false), Struct_1(vec2<i32>(41269i, -1i), i32(-2147483648), true), Struct_1(vec2<i32>(27328i, 13410i), i32(-2147483648), true), Struct_1(vec2<i32>(-20717i, i32(-2147483648)), -28316i, false), Struct_1(vec2<i32>(-38515i, 2147483647i), 0i, false));

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<i32>(1i, 6000i), 1i, false), Struct_1(vec2<i32>(0i, -31495i), 24386i, false), Struct_1(vec2<i32>(0i, i32(-2147483648)), 28133i, true), Struct_1(vec2<i32>(i32(-2147483648), 5193i), -34892i, true), Struct_1(vec2<i32>(i32(-2147483648), 16690i), -10045i, true), Struct_1(vec2<i32>(5152i, 0i), 172i, true), Struct_1(vec2<i32>(1i, 37878i), 0i, true), Struct_1(vec2<i32>(-1i, 27090i), 26666i, true), Struct_1(vec2<i32>(-20092i, 12976i), -12732i, true), Struct_1(vec2<i32>(2147483647i, 0i), 0i, false), Struct_1(vec2<i32>(2147483647i, -36111i), 0i, true), Struct_1(vec2<i32>(-32635i, -32041i), 66400i, false), Struct_1(vec2<i32>(-1i, 15209i), 35772i, true), Struct_1(vec2<i32>(i32(-2147483648), -1i), 46757i, true), Struct_1(vec2<i32>(-32325i, 19013i), i32(-2147483648), true), Struct_1(vec2<i32>(0i, -14585i), 9335i, true), Struct_1(vec2<i32>(29709i, 8979i), i32(-2147483648), true), Struct_1(vec2<i32>(1i, 1i), 8367i, false), Struct_1(vec2<i32>(1i, 18834i), 0i, true), Struct_1(vec2<i32>(i32(-2147483648), 63085i), -55713i, true), Struct_1(vec2<i32>(0i, 2147483647i), 15966i, false), Struct_1(vec2<i32>(-1i, 54653i), 2013i, false));

var<private> global3: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(4294967295u, 28241u), vec2<u32>(15712u, 0u), vec2<u32>(0u, 46224u), vec2<u32>(11026u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 13549u), vec2<u32>(16545u, 0u), vec2<u32>(5368u, 4294967295u), vec2<u32>(4294967295u, 64782u), vec2<u32>(36365u, 0u), vec2<u32>(0u, 0u), vec2<u32>(73068u, 26092u), vec2<u32>(67933u, 1u), vec2<u32>(2890u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 29453u), vec2<u32>(6783u, 4294967295u), vec2<u32>(38091u, 1u), vec2<u32>(25471u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 24103u), vec2<u32>(94091u, 4294967295u), vec2<u32>(0u, 108158u), vec2<u32>(0u, 36893u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(4469u, 1u), vec2<u32>(19511u, 0u));

var<private> global4: f32 = 238f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    global1 = array<Struct_1, 21>();
    global4 = _wgslsmith_div_f32(-328f, 490f);
    global2 = array<Struct_1, 22>();
    var var_0 = ~(-22441i) ^ ~(~max(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(u_input.a, u_input.a)));
    let var_1 = u_input.a;
    return _wgslsmith_mult_i32(-var_1, abs(-(~(~u_input.a))));
}

fn func_3() -> f32 {
    global4 = -159f;
    var var_0 = true;
    global0 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(-6053i & u_input.a, 1i), abs(~min(select(u_input.a, u_input.a, true), _wgslsmith_add_i32(-9316i, -36861i))));
    let var_1 = true;
    let var_2 = global2[_wgslsmith_index_u32(36951u, 22u)];
    return 642f;
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_1(vec2<i32>(func_2(u_input.b.wzw), _wgslsmith_clamp_i32(u_input.a, u_input.a, _wgslsmith_mult_i32(-2147483647i, u_input.a))), u_input.a, true);
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1619f + 480f)) - -1237f)) * _wgslsmith_f_op_f32(f32(-1f) * -406f));
    global4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), -1374f)), true));
    let var_1 = global1[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_div_u32(~(~u_input.b.x), u_input.b.x)), 21u)];
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1253f, 735f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1547f), -2247f)))) * _wgslsmith_f_op_f32(262f - 1740f)) + _wgslsmith_f_op_f32(max(1900f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -606f))) + 339f))));
    return StorageBuffer(~_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.c, 1u), vec2<u32>(~61712u, _wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], u_input.b.zx))), 18934i ^ select(max(-48214i, -u_input.a), i32(-1i) * -2147483647i, !var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 22>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1108f, 149f, 1036f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1153f, 931f, -791f), vec3<f32>(1780f, 157f, 984f)))))))));
    var var_1 = _wgslsmith_div_vec3_f32(var_0, var_0);
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0 + var_0), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, -261f)) + _wgslsmith_div_f32(240f, 129f))), var_0.x, _wgslsmith_f_op_f32(round(var_0.x))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2262f, -1227f)) + _wgslsmith_f_op_f32(trunc(1000f))) - -1873f)));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.x)), -1471f) + _wgslsmith_f_op_f32(-var_1.x)), 785f, _wgslsmith_f_op_f32(select(909f, -618f, false)));
    global4 = var_2.x;
    let x = u_input.a;
    s_output = func_1();
}

