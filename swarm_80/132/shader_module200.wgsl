struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<i32>(-1i, -24687i), false, i32(-2147483648), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 2147483647i), 79300u), Struct_1(vec2<i32>(2147483647i, 20168i), false, -11235i, vec4<i32>(-1i, -68891i, -39478i, 2147483647i), 42325u), Struct_1(vec2<i32>(18330i, -34311i), false, -7993i, vec4<i32>(3586i, 0i, -4619i, 36685i), 0u), Struct_1(vec2<i32>(1i, -51327i), true, 2147483647i, vec4<i32>(-68112i, 2147483647i, -5019i, 5168i), 49290u), Struct_1(vec2<i32>(-10339i, 2147483647i), false, -48894i, vec4<i32>(-51998i, i32(-2147483648), -28615i, -1i), 4294967295u), Struct_1(vec2<i32>(17793i, 64835i), false, -1i, vec4<i32>(29253i, 2147483647i, -27181i, 0i), 34744u), Struct_1(vec2<i32>(0i, 2147483647i), true, -16859i, vec4<i32>(1i, i32(-2147483648), 50563i, -1i), 4294967295u), Struct_1(vec2<i32>(13281i, 2147483647i), false, 6600i, vec4<i32>(-85257i, 2364i, 1i, -24515i), 19602u), Struct_1(vec2<i32>(20272i, i32(-2147483648)), false, 0i, vec4<i32>(-32064i, 2147483647i, 24415i, 0i), 1u), Struct_1(vec2<i32>(31569i, 38241i), false, 2147483647i, vec4<i32>(1i, 31345i, 46938i, -53951i), 4294967295u), Struct_1(vec2<i32>(-32638i, -21500i), true, -25593i, vec4<i32>(13122i, 6376i, 0i, i32(-2147483648)), 12173u), Struct_1(vec2<i32>(-1i, 15893i), true, 7562i, vec4<i32>(16157i, -9252i, i32(-2147483648), 7782i), 1u), Struct_1(vec2<i32>(2147483647i, 2147483647i), true, 13603i, vec4<i32>(-39933i, 1i, 4900i, 22317i), 0u), Struct_1(vec2<i32>(i32(-2147483648), -11155i), true, i32(-2147483648), vec4<i32>(i32(-2147483648), -7413i, 0i, -37640i), 0u), Struct_1(vec2<i32>(-33165i, -1i), false, 1i, vec4<i32>(0i, -6804i, -1i, 23995i), 9837u), Struct_1(vec2<i32>(38119i, 38459i), false, -1i, vec4<i32>(-36869i, 0i, -36711i, i32(-2147483648)), 9627u), Struct_1(vec2<i32>(-22486i, -1i), false, 0i, vec4<i32>(-1i, 26248i, 32633i, -1i), 97006u), Struct_1(vec2<i32>(2147483647i, 9880i), false, -1i, vec4<i32>(2147483647i, 2147483647i, 0i, 2147483647i), 0u), Struct_1(vec2<i32>(29335i, -1i), true, 72765i, vec4<i32>(1i, -1i, 1i, 1i), 4294967295u), Struct_1(vec2<i32>(i32(-2147483648), -1i), false, 53548i, vec4<i32>(5492i, -8016i, i32(-2147483648), -1i), 1u));

var<private> global3: vec4<f32>;

var<private> global4: array<u32, 3>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = global1.b;
    var var_1 = Struct_1(select(u_input.a.xy, firstTrailingBit(min(min(u_input.a.xz, vec2<i32>(u_input.a.x, arg_3.d.x)), ~arg_2.d.wx)), true), abs(max(9121i, global1.d.x)) == arg_2.d.x, global1.a.x, vec4<i32>(2147483647i, i32(-1i) * -_wgslsmith_add_i32(21426i, arg_3.a.x), _wgslsmith_div_i32(global1.c, ~(-6649i)), i32(-1i) * -10413i), 0u);
    global2 = array<Struct_1, 20>();
    global2 = array<Struct_1, 20>();
    global2 = array<Struct_1, 20>();
    return ~(-1i);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool) -> i32 {
    var var_0 = ~(-(2147483647i & arg_0.x));
    return _wgslsmith_clamp_i32(arg_0.x, _wgslsmith_mult_i32(select(func_3(vec3<f32>(-2297f, -1126f, 772f), vec2<u32>(0u, u_input.b), global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(38830u, 20u)]), -69486i, true), 15420i), 64633i) | (_wgslsmith_add_i32(max(arg_1.c & -63669i, _wgslsmith_div_i32(arg_0.x, 1i)), _wgslsmith_div_i32(i32(-1i) * -1i, -42153i)) << (~global1.e % 32u));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(247f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-583f + 2150f))));
    global2 = array<Struct_1, 20>();
    global4 = array<u32, 3>();
    global2 = array<Struct_1, 20>();
    var var_1 = vec2<i32>(~(~select(func_2(u_input.a, Struct_1(vec2<i32>(15998i, -2147483647i), false, 2147483647i, vec4<i32>(global1.d.x, 2147483647i, u_input.a.x, u_input.a.x), global1.e), arg_0), select(u_input.a.x, u_input.a.x, true), u_input.b < u_input.b)), _wgslsmith_add_i32(u_input.a.x, 13783i));
    return global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(countOneBits(0u), 3u)] >> (6116u % 32u), 20u)];
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = u_input.b;
    var_0 = ~func_1(true || (reverseBits(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.e, 3u)], 3u)]) != u_input.b)).e;
    global4 = array<u32, 3>();
    global4 = array<u32, 3>();
    var_0 = abs(~21694u);
    return vec2<u32>(~global1.e, reverseBits(_wgslsmith_clamp_u32(~global4[_wgslsmith_index_u32(~56374u, 3u)], ~u_input.b ^ global4[_wgslsmith_index_u32(1u, 3u)], reverseBits(0u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.xy;
    let var_1 = func_4(func_1(global1.b));
    var var_2 = -(~(-(vec3<i32>(u_input.a.x, global1.c, u_input.a.x) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(16726u, 73035u, 0u), vec3<u32>(0u, global1.e, var_1.x), vec3<u32>(84972u, var_1.x, 1u)) % vec3<u32>(32u)))));
    var_2 = max(~min(-_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.x, global1.a.x, var_2.x), vec3<i32>(1i, -31773i, -41695i), global1.d.zww), vec3<i32>(var_2.x, 85772i, 2147483647i) << (_wgslsmith_mod_vec3_u32(vec3<u32>(global1.e, 1u, global1.e), vec3<u32>(0u, global4[_wgslsmith_index_u32(global1.e, 3u)], 36841u)) % vec3<u32>(32u))), global1.d.zyy);
    let var_3 = global2[_wgslsmith_index_u32(global1.e, 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(global3.yw);
}

