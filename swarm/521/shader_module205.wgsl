struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(23632u, 520f, Struct_2(Struct_1(73316u), Struct_1(71672u), vec4<u32>(4294967295u, 66384u, 1u, 13289u)));

var<private> global1: array<f32, 18>;

var<private> global2: vec4<i32> = vec4<i32>(2147483647i, -21725i, 0i, 42935i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: bool) -> vec4<bool> {
    return vec4<bool>(!arg_0, any(select(!vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), vec2<bool>(false, true))) | select(false || (global1[_wgslsmith_index_u32(30539u, 18u)] != global1[_wgslsmith_index_u32(u_input.a, 18u)]), arg_0, false), !(!(u_input.b == ~global2.x)), true);
}

fn func_3() -> vec4<bool> {
    global0 = Struct_5(u_input.d, global0.b, global0.c);
    global2 = min(vec4<i32>(_wgslsmith_clamp_i32(global2.x, global2.x, _wgslsmith_clamp_i32(-45358i, _wgslsmith_clamp_i32(1i, -4311i, u_input.b), -20202i | u_input.b)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(-1i, global2.x, global2.x, 13530i), firstLeadingBit(vec4<i32>(-1i, u_input.b, 1i, 2147483647i))), _wgslsmith_mod_vec4_i32(vec4<i32>(29187i, global2.x, global2.x, global2.x), -vec4<i32>(50731i, 24631i, -2147483647i, u_input.b))), 2147483647i, 0i), ~vec4<i32>(-27015i, global2.x, 1i, -1i));
    var var_0 = abs(~vec3<i32>(-2147483647i, global2.x, -u_input.b));
    global2 = select(~abs(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-3780i, u_input.b, -51251i, 25307i), select(vec4<i32>(var_0.x, 31397i, var_0.x, var_0.x), vec4<i32>(1i, global2.x, 59947i, 40270i), vec4<bool>(true, true, true, true)), vec4<i32>(-7536i, global2.x, 2147483647i, global2.x))), select(firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, 2890i), global2.wy), _wgslsmith_sub_i32(u_input.b, 1i), 1i, 9803i)), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -50407i, 0i, 2147483647i) & vec4<i32>(38064i, -45705i, -31858i, 2147483647i), vec4<i32>(-14555i, 80200i, var_0.x, var_0.x) >> (vec4<u32>(1u, 60183u, 78872u, 4294967295u) % vec4<u32>(32u))), vec4<i32>(~1i, -var_0.x, 2670i, _wgslsmith_add_i32(u_input.b, u_input.b))), select(vec4<bool>(func_1(true).x, false, any(vec4<bool>(false, false, true, false)), func_1(false).x), func_1(true), select(false, global0.c.a.a < u_input.a, true))), !(!func_1(true)));
    var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(max(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, 24209i, var_0.x, 26138i), vec4<i32>(-2147483647i, -55219i, u_input.b, var_0.x)), firstTrailingBit(vec4<i32>(u_input.b, var_0.x, -21227i, 34316i)))), _wgslsmith_clamp_vec4_i32(-reverseBits(vec4<i32>(var_0.x, u_input.b, var_0.x, -18615i)), vec4<i32>(-1i ^ var_0.x, 56425i, firstLeadingBit(-43675i), global2.x), max(-vec4<i32>(-2147483647i, u_input.b, var_0.x, 2913i), _wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, global2.x, var_0.x, -1i), vec4<i32>(u_input.b, var_0.x, -1i, u_input.b))))), global2.x, _wgslsmith_div_i32(~_wgslsmith_div_i32(~global2.x, -3089i), var_0.x));
    return select(vec4<bool>(!(all(vec4<bool>(true, true, false, false)) || true), all(select(func_1(true).ww, func_1(false).xw, vec2<bool>(true, true))), true, any(func_1(any(vec4<bool>(false, true, false, false))).wy)), select(func_1(true), !vec4<bool>(true, true, true, func_1(false).x), !vec4<bool>(true, global1[_wgslsmith_index_u32(global0.c.b.a, 18u)] == -119f, true, true)), true);
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec2<i32>, arg_3: vec2<f32>) -> Struct_1 {
    global1 = array<f32, 18>();
    let var_0 = Struct_3(~max(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, 32885i, 0i, arg_1), vec4<i32>(0i, -1i, -43264i, global2.x))), abs(vec4<i32>(global2.x, arg_2.x, 3286i, -1i)) | _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 66483i, arg_1, u_input.b), vec4<i32>(global2.x, -7034i, u_input.b, arg_2.x))), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(arg_2.x, arg_2.x), min(1i, 15078i)), -1i, arg_1), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 1i, 25732i), vec3<i32>(arg_2.x, arg_2.x, arg_1) & global2.wzy)), all(select(vec4<bool>(any(vec2<bool>(false, false)), -38726i >= u_input.b, true, true), func_3(), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)))));
    var var_1 = global0.c;
    return Struct_1(arg_0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 18>();
    let var_0 = func_1(523f <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(sign(-956f)))));
    var var_1 = func_2(global0.c, -5995i, ~(-firstTrailingBit(_wgslsmith_add_vec2_i32(global2.xy, global2.xw))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global1[_wgslsmith_index_u32(u_input.d, 18u)])), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.b, -1696f)))))))));
    var var_2 = !var_0;
    let var_3 = global0.c;
    let var_4 = Struct_3(-select(vec4<i32>(_wgslsmith_clamp_i32(global2.x, global2.x, global2.x), abs(u_input.b), -2147483647i, u_input.b), vec4<i32>(10757i, countOneBits(u_input.b), -2147483647i, ~u_input.b), var_2.x), vec3<i32>(-28777i, -1i, ~countOneBits(~u_input.b)), !(!var_0.x));
    var var_5 = global0.c.c;
    let var_6 = vec2<bool>(select(true, all(vec3<bool>(var_4.c, true, var_2.x)), func_1(all(vec2<bool>(true, true))).x) || any(select(vec2<bool>(var_2.x, false), var_2.zx, select(vec2<bool>(true, var_0.x), vec2<bool>(true, var_2.x), false))), !(!all(select(vec2<bool>(var_2.x, var_2.x), var_0.xz, var_0.wz))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(global2.x, ~_wgslsmith_div_i32(2147483647i, global2.x)) << (var_5.x % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, 322f, global1[_wgslsmith_index_u32(var_1.a, 18u)]) - vec3<f32>(442f, global1[_wgslsmith_index_u32(41011u, 18u)], -337f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1518f, global0.b, -523f))))) + vec3<f32>(global1[_wgslsmith_index_u32(reverseBits(firstTrailingBit(u_input.d)), 18u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.a, 18u)]), global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -129f)))));
}

