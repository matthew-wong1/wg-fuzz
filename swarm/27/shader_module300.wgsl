struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: array<vec4<i32>, 8>;

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

var<private> global3: vec2<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = firstTrailingBit(_wgslsmith_add_vec3_i32(select(vec3<i32>(1i, 1i, 1i), abs(vec3<i32>(2147483647i, -17271i, 0i)), global2.x), firstTrailingBit(~vec3<i32>(0i, 0i, 34179i))) & reverseBits(select(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 57764i, -25912i), vec3<i32>(107580i, 16129i, -1i)), vec3<i32>(-32877i, 23776i, -7563i), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, global2.x, global2.x), vec3<bool>(global0.x, global2.x, false)))));
    let var_1 = Struct_1(abs(arg_0.a));
    let var_2 = Struct_3(global3.x);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1157f, -233f, global2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), -1000f);
    let var_4 = arg_0.a;
    return _wgslsmith_f_op_vec2_f32(round(var_3.yz));
}

fn func_2() -> Struct_4 {
    global1 = array<vec4<i32>, 8>();
    var var_0 = all(vec4<bool>(true, any(vec2<bool>(false, true)), global0.x, any(vec4<bool>(global0.x, true, global2.x, global0.x)))) || (true & all(select(!global2.zx, select(vec2<bool>(global2.x, global0.x), global2.xx, global0.x), !global0.yy)));
    return Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(u_input.a)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(u_input.a))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global3.x))))), Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1509f - -676f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1624f * -556f) - _wgslsmith_f_op_f32(global3.x * global3.x))))));
}

fn func_1() -> Struct_4 {
    let var_0 = func_2();
    let var_1 = vec4<u32>(37019u, _wgslsmith_dot_vec3_u32(vec3<u32>(16458u, u_input.a.x, 1u) ^ (vec3<u32>(u_input.a.x, 0u, 35279u) | vec3<u32>(4294967295u, 10626u, u_input.a.x)), vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 4294967295u, countOneBits(u_input.a.x))) | u_input.a.x, u_input.a.x, 0u);
    var var_2 = true;
    global2 = select(!(!vec3<bool>(false, global0.x, !global2.x)), !select(vec3<bool>(select(true, true, true), true, false), !vec3<bool>(global2.x, global0.x, global0.x), vec3<bool>(false, global0.x, !global0.x)), vec3<bool>(true, select(all(vec3<bool>(global2.x, global2.x, true)), global0.x, global0.x) || any(select(vec4<bool>(global0.x, true, false, true), vec4<bool>(false, false, global2.x, true), vec4<bool>(false, global0.x, global0.x, false))), global0.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.x, global3.x, 2036f))))))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = countOneBits(2147483647i);
    let var_2 = ~countOneBits(~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.a.x, 11113u, 11832u, 30692u)), ~vec4<u32>(5540u, u_input.a.x, u_input.a.x, u_input.a.x)));
    var var_3 = vec3<i32>(-1i) * -(~_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 988i, -8787i), vec3<i32>(-1436i, 2147483647i, 45265i), countOneBits(vec3<i32>(2147483647i, 0i, -1950i))));
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_f_op_f32(max(var_0.b.a, _wgslsmith_f_op_f32(var_0.a.x - global3.x)))));
    global2 = select(select(!(!vec3<bool>(global2.x, true, global2.x)), !vec3<bool>(select(true, true, global2.x), true, !global2.x), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-8408i, var_3.x, 0i), var_3.x << (var_2.x % 32u)) <= firstTrailingBit(1i)), vec3<bool>(global2.x, global0.x, global2.x), vec3<bool>(_wgslsmith_dot_vec4_u32(var_2, var_2 >> (vec4<u32>(10041u, 0u, u_input.a.x, var_2.x) % vec4<u32>(32u))) <= abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 46723u), vec2<u32>(52892u, 10269u))), global0.x, global3.x > global3.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.a))), -989f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global3.x) + _wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_f32(func_1().b.a - 1784f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_0.b.a, var_0.a.x))))) - _wgslsmith_f_op_f32(-1738f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1404f), _wgslsmith_f_op_f32(global3.x + var_0.a.x))))), _wgslsmith_sub_i32(-(var_3.x | ~1i), var_3.x), 33712u);
}

