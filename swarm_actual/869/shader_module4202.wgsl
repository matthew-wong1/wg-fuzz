struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18>;

var<private> global1: Struct_4;

var<private> global2: array<vec2<i32>, 8>;

var<private> global3: vec3<i32> = vec3<i32>(13132i, 0i, 0i);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_1(global1.a.a, global1.a.b, global1.a.c);
    global1 = Struct_4(Struct_1(var_0.a ^ ~(~23809u), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.a.c.x, 416f, _wgslsmith_f_op_f32(-var_0.c.x)))), var_0.c), select(!vec2<bool>(all(vec2<bool>(global1.b.x, global1.b.x)), !global1.b.x), !select(vec2<bool>(true, false), vec2<bool>(false, global1.b.x), u_input.b >= global1.a.a), vec2<bool>(global1.b.x, all(!global1.b))), vec2<i32>(~(36940i << ((var_0.a ^ 1u) % 32u)), global3.x), ~global1.d, vec2<f32>(-1116f, _wgslsmith_f_op_f32(f32(-1f) * -1324f)));
    global3 = countOneBits(min(vec3<i32>(global0[_wgslsmith_index_u32(global1.d.x, 18u)], i32(-1i) * -global1.c.x, ~global0[_wgslsmith_index_u32(1u, 18u)]), min(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(646i, 19513i, 1i), vec3<i32>(-1i, -2487i, global3.x)), -vec3<i32>(23815i, global0[_wgslsmith_index_u32(u_input.b, 18u)], -2147483647i)), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.c.x, 0i, global0[_wgslsmith_index_u32(var_0.a, 18u)]), vec3<i32>(-23064i, global3.x, global1.c.x))))));
    var var_1 = (4294967295u >> (1u % 32u)) == ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, firstTrailingBit(u_input.b)), vec2<u32>(~global1.a.a, 1u));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.e * var_0.c.zy) + vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.c.x * -1000f) - _wgslsmith_f_op_f32(ceil(199f))))), var_0.c.x));
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(698f, -562f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(768f, global1.e.x) - _wgslsmith_f_op_f32(-var_0.c.x)))), var_0.c.x), _wgslsmith_f_op_vec3_f32(global1.a.c + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x + 366f), _wgslsmith_f_op_f32(ceil(994f)), var_2.x))), global1.b.x));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1) -> vec2<i32> {
    global2 = array<vec2<i32>, 8>();
    let var_0 = 1f;
    let var_1 = _wgslsmith_f_op_vec3_f32(func_3());
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(arg_2.b));
    global0 = array<i32, 18>();
    return -_wgslsmith_clamp_vec2_i32(vec2<i32>(reverseBits(1i), select(2147483647i, 7279i, arg_1)) << ((max(global1.d.zy, global1.d.zy) << ((global1.d.zz ^ vec2<u32>(global1.d.x, 0u)) % vec2<u32>(32u))) % vec2<u32>(32u)), abs(global1.c), _wgslsmith_mod_vec2_i32(vec2<i32>(global3.x | arg_0.x, select(76243i, 0i, false)), global1.c));
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = vec3<bool>(0i <= global0[_wgslsmith_index_u32(18995u, 18u)], true, global1.b.x);
    global0 = array<i32, 18>();
    var var_1 = Struct_3(_wgslsmith_dot_vec2_i32(func_2(vec2<i32>(1i, abs(-2147483647i)), var_0.x, Struct_1(global1.a.a, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.e.x, -988f, 622f))), _wgslsmith_f_op_vec3_f32(-global1.a.c))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(global1.a.a) ^ select(19607u, u_input.a, var_0.x), ~(~33331u)), 8u)]), Struct_2(_wgslsmith_f_op_f32(sign(arg_0)), Struct_1(select(34765u, global1.a.a, all(vec2<bool>(global1.b.x, var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -881f), arg_0, arg_0), _wgslsmith_f_op_vec3_f32(global1.a.b + global1.a.c)), global1.a.c, -4412i, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, _wgslsmith_div_u32(u_input.b, 14633u)), _wgslsmith_add_vec2_u32(~global1.d.zx, vec2<u32>(global1.d.x, u_input.a)), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 4294967295u), global1.d.xy))), Struct_2(558f, Struct_1(global1.d.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1.a.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(871f, 1163f, global1.a.b.x) + global1.a.c), !vec3<bool>(true, true, var_0.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global1.a.c - global1.a.b)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(364f, 979f, arg_0), vec3<f32>(831f, 174f, -142f))))), _wgslsmith_mod_i32(3125i >> (1u % 32u), 1i), ~(~(global1.d.xz & global1.d.xw))));
    var var_2 = var_1.b;
    global2 = array<vec2<i32>, 8>();
    return Struct_2(var_1.b.b.c.x, Struct_1(global1.d.x << (min(var_2.b.a & 0u, abs(1u)) % 32u), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3()).x, arg_0, global1.a.c.x), var_2.c), var_2.c, ~(global3.x ^ var_1.c.d), firstTrailingBit(var_1.c.e) >> (countOneBits(vec2<u32>(0u, 35892u)) % vec2<u32>(32u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: Struct_2) -> f32 {
    let var_0 = global3.yz;
    let var_1 = !(!select(select(select(vec3<bool>(global1.b.x, true, global1.b.x), vec3<bool>(true, global1.b.x, true), global1.b.x), !vec3<bool>(global1.b.x, global1.b.x, global1.b.x), any(global1.b)), !select(vec3<bool>(true, global1.b.x, true), vec3<bool>(false, true, true), global1.b.x), !(!vec3<bool>(true, global1.b.x, global1.b.x))));
    global3 = vec3<i32>(0i, _wgslsmith_dot_vec3_i32(arg_2.zyx, ~(-vec3<i32>(arg_2.x, 1i, var_0.x))) ^ ~(abs(global1.c.x) >> (_wgslsmith_mult_u32(arg_3.b.a, 59551u) % 32u)), ~29166i);
    var var_2 = Struct_4(func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_3.a)), 1122f)))).b, vec2<bool>(global1.b.x || global1.b.x, arg_3.b.b.x <= -884f), vec2<i32>(-arg_2.x, -63253i), global1.d, global1.a.c.xz);
    let var_3 = Struct_4(func_1(697f).b, select(vec2<bool>(any(var_1.yz) || !global1.b.x, var_1.x), !(!select(var_2.b, var_2.b, false)), var_1.zy), _wgslsmith_mod_vec2_i32(vec2<i32>(~(-29961i), select(2147483647i, 1i, true)), _wgslsmith_mult_vec2_i32(~global1.c, ~global1.c | vec2<i32>(global1.c.x, 0i))), var_2.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_3.b.c.zy)))))));
    return _wgslsmith_div_f32(-1208f, _wgslsmith_f_op_f32(trunc(386f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(func_4(~vec3<u32>(abs(global1.d.x), ~global1.a.a, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.x, global1.a.a, u_input.b, global1.a.a), vec4<u32>(41596u, global1.a.a, u_input.b, global1.a.a))), abs(_wgslsmith_div_vec3_u32(global1.d.xyz, global1.d.xwy) | (global1.d.xww ^ vec3<u32>(0u, 4294967295u, 37316u))), vec4<i32>(~global0[_wgslsmith_index_u32(u_input.b, 18u)], -2147483647i, -2147483647i, global0[_wgslsmith_index_u32(17438u, 18u)]), func_1(-204f))), Struct_1(1u, global1.a.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(global1.a.b))))), _wgslsmith_div_vec3_f32(global1.a.b, global1.a.b), 15302i, firstLeadingBit(select(firstLeadingBit(global1.d.yy), vec2<u32>(global1.a.a, u_input.b), select(global1.b, global1.b, global1.b.x))) & (~_wgslsmith_mult_vec2_u32(global1.d.xz, global1.d.zy) | _wgslsmith_mod_vec2_u32(func_1(global1.e.x).e, vec2<u32>(u_input.b, 1u))));
    var var_1 = !(!select(select(!vec2<bool>(global1.b.x, global1.b.x), select(vec2<bool>(true, false), global1.b, false), vec2<bool>(true, true)), !(!vec2<bool>(global1.b.x, global1.b.x)), global1.b));
    let var_2 = global3.xy;
    let var_3 = select(global1.b, vec2<bool>(!var_1.x, true), !var_1.x);
    let var_4 = var_3.x;
    let var_5 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b.x, 1000f, 1409f, 709f))))), vec2<f32>(_wgslsmith_f_op_f32(-var_5.c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.c.x + var_5.c.x))))));
}

