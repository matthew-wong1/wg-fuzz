struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true));

var<private> global2: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(-33346i, 8935i, 2147483647i), vec3<i32>(-73036i, -29513i, 1i), vec3<i32>(7468i, -25313i, 1i), vec3<i32>(2147483647i, -47272i, 42064i), vec3<i32>(1i, i32(-2147483648), 2147483647i), vec3<i32>(-1i, 1i, 1i), vec3<i32>(39585i, 0i, 0i), vec3<i32>(23083i, 35044i, 35424i));

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<i32>(-10765i, 54912i, 65015i, i32(-2147483648))), Struct_1(vec4<i32>(31453i, 2147483647i, -1i, 8252i)), Struct_1(vec4<i32>(51076i, 2147483647i, 206i, -63407i)), Struct_1(vec4<i32>(2147483647i, 0i, 0i, 1866i)));

var<private> global4: array<Struct_1, 19>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global0 = array<f32, 28>();
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 28u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -183f)))), 1520f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))))));
    let var_1 = Struct_1(select(u_input.c, vec4<i32>(min(min(u_input.b.x, arg_0.a.x), _wgslsmith_mult_i32(arg_1.a.x, arg_0.a.x)), 34957i, _wgslsmith_dot_vec3_i32(arg_0.a.wwy << (u_input.d % vec3<u32>(32u)), abs(vec3<i32>(arg_1.a.x, arg_1.a.x, 1i))), 36620i), all(vec4<bool>(true, true, true, true)) | true));
    global3 = array<Struct_1, 4>();
    let var_2 = Struct_1(firstTrailingBit(arg_1.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-827f, var_0.x)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    global3 = array<Struct_1, 4>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.d.x), 28u)] - _wgslsmith_f_op_f32(func_3(Struct_1(vec4<i32>(arg_0.x, arg_1.a.x, -2147483647i, u_input.b.x)), arg_1))), global0[_wgslsmith_index_u32(~u_input.d.x, 28u)])));
    var var_1 = reverseBits(vec3<i32>(-u_input.b.x, _wgslsmith_sub_i32(1i, ~(~(-14349i))), 11104i));
    var var_2 = Struct_1(_wgslsmith_clamp_vec4_i32(-arg_1.a, vec4<i32>(1i, arg_0.x, -1i, 3584i) << (max(firstTrailingBit(vec4<u32>(4294967295u, 0u, u_input.a, 1u)), ~vec4<u32>(u_input.d.x, u_input.d.x, 0u, u_input.d.x)) % vec4<u32>(32u)), abs(vec4<i32>(1i, _wgslsmith_div_i32(45501i, u_input.b.x), ~(-2147483647i), countOneBits(58629i)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(min(-1197f, -499f)))))));
    return global4[_wgslsmith_index_u32(4294967295u, 19u)];
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, global0[_wgslsmith_index_u32(1u, 28u)], -1451f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-431f, global0[_wgslsmith_index_u32(25003u, 28u)], global0[_wgslsmith_index_u32(u_input.d.x, 28u)]))))))));
    global0 = array<f32, 28>();
    global0 = array<f32, 28>();
    global3 = array<Struct_1, 4>();
    var var_1 = func_2(abs(~vec2<i32>(arg_3.x, -2147483647i)), Struct_1(vec4<i32>(-u_input.c.x, -8728i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_2.a.x, u_input.b.x), 1i), firstLeadingBit(arg_1.a.x))));
    return ~u_input.d.x;
}

fn func_1() -> f32 {
    global1 = array<vec3<bool>, 23>();
    global1 = array<vec3<bool>, 23>();
    global4 = array<Struct_1, 19>();
    var var_0 = global3[_wgslsmith_index_u32(u_input.a, 4u)];
    global2 = array<vec3<i32>, 8>();
    return global0[_wgslsmith_index_u32(~(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-145f, global0[_wgslsmith_index_u32(u_input.a, 28u)]) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(u_input.d.x, 28u)]))), func_2(-vec2<i32>(-2147483647i, 6335i), global4[_wgslsmith_index_u32(~1u, 19u)]), Struct_1(u_input.c), var_0.a) ^ ~111401u), 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(u_input.d.x, 8u)];
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x << (u_input.a % 32u), 43124u), ~u_input.d.xx), 69730u, abs(~u_input.a)) | u_input.a, 4u)];
    global1 = array<vec3<bool>, 23>();
    var var_2 = u_input.b.x;
    let var_3 = 4294967295u;
    let var_4 = _wgslsmith_f_op_f32(func_1());
    let var_5 = func_2(var_0.xy, func_2(var_1.a.yx, func_2(~(-vec2<i32>(12952i, u_input.b.x)), func_2(firstLeadingBit(var_1.a.yx), global3[_wgslsmith_index_u32(var_3 >> (1u % 32u), 4u)]))));
    global4 = array<Struct_1, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -240f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), max(vec4<i32>(-var_0.x, u_input.b.x, 15899i, u_input.b.x), max(~_wgslsmith_mult_vec4_i32(var_1.a, var_1.a), countOneBits(~vec4<i32>(var_0.x, u_input.b.x, -28366i, u_input.b.x)))));
}

