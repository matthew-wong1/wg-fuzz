struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(7988u, 1u, 2225u, 1u), vec4<u32>(1u, 0u, 34738u, 19105u), vec4<u32>(3398u, 42179u, 54520u, 1u), vec4<u32>(4294967295u, 0u, 1u, 5411u), vec4<u32>(44683u, 0u, 0u, 55421u), vec4<u32>(0u, 20114u, 4000u, 0u), vec4<u32>(20124u, 18050u, 0u, 0u), vec4<u32>(0u, 1162u, 0u, 4294967295u), vec4<u32>(30734u, 4294967295u, 4294967295u, 56149u), vec4<u32>(67434u, 1u, 1u, 33874u), vec4<u32>(1u, 1u, 50478u, 71709u), vec4<u32>(40325u, 1u, 1u, 57706u), vec4<u32>(52680u, 39492u, 1u, 1721u), vec4<u32>(0u, 4608u, 4294967295u, 1u), vec4<u32>(1u, 59738u, 4294967295u, 11397u), vec4<u32>(20029u, 0u, 1u, 53371u), vec4<u32>(47096u, 65811u, 0u, 1u), vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<u32>(4294967295u, 91881u, 26435u, 36999u), vec4<u32>(35497u, 57487u, 8395u, 4294967295u), vec4<u32>(48590u, 1u, 0u, 4294967295u), vec4<u32>(1u, 1u, 0u, 26700u), vec4<u32>(4294967295u, 12605u, 63556u, 15546u));

var<private> global1: vec4<f32> = vec4<f32>(857f, 1049f, -1000f, -1549f);

var<private> global2: Struct_2;

var<private> global3: array<vec4<u32>, 1>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<i32>) -> bool {
    global3 = array<vec4<u32>, 1>();
    var var_0 = -1384f;
    var var_1 = arg_1;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, arg_1.c.e, _wgslsmith_f_op_f32(global2.c.e + 1599f)) * vec4<f32>(_wgslsmith_f_op_f32(select(359f, global1.x, var_1.c.a.x)), 1000f, 690f, global2.c.e)) * vec4<f32>(_wgslsmith_f_op_f32(var_1.c.e - arg_2.c.e), global2.c.e, _wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(select(-480f, _wgslsmith_f_op_f32(f32(-1f) * -351f), all(vec2<bool>(global2.b, global2.b)))))) * vec4<f32>(arg_1.c.e, -361f, -1077f, -254f));
    var var_2 = vec2<u32>(~(~var_1.a.x | ~arg_1.a.x), 61051u);
    return var_1.c.b.x;
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = global2.c;
    var var_1 = u_input.d ^ u_input.d;
    var var_2 = global2.b && global2.b;
    var var_3 = Struct_1(vec3<bool>(global2.b, !(!func_3(vec2<i32>(-2147483647i, global2.c.c.x), Struct_2(global2.a, false, global2.c), Struct_2(vec3<u32>(global2.a.x, global2.a.x, global2.a.x), true, Struct_1(global2.c.a, vec3<bool>(false, true, true), vec4<i32>(var_0.c.x, 0i, u_input.e, u_input.b.x), global2.c.d, -520f)), vec2<i32>(-6265i, u_input.a.x))), any(!var_0.b)), !vec3<bool>((-11405i <= arg_0) == func_3(vec2<i32>(-6592i, var_0.c.x), Struct_2(vec3<u32>(1u, u_input.d, 0u), global2.c.a.x, global2.c), Struct_2(vec3<u32>(0u, 1u, 26027u), false, Struct_1(vec3<bool>(global2.b, var_0.a.x, true), var_0.b, vec4<i32>(var_0.c.x, 0i, 35971i, 2147483647i), vec4<bool>(var_0.a.x, var_0.d.x, global2.c.b.x, global2.b), var_0.e)), global2.c.c.yy), global2.c.e < -829f, true), -max(vec4<i32>(i32(-1i) * -1i, -27055i, arg_0, global2.c.c.x), global2.c.c), vec4<bool>(any(vec2<bool>(true, any(vec4<bool>(true, true, true, global2.b)))), any(!select(vec2<bool>(false, false), vec2<bool>(global2.b, false), var_0.a.zz)), all(vec3<bool>(!global2.c.b.x, !global2.c.a.x, arg_0 <= global2.c.c.x)), !all(select(var_0.b, vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), var_0.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global2.c.e))))))));
    var var_4 = global3[_wgslsmith_index_u32(u_input.d, 1u)] >> (abs(global0[_wgslsmith_index_u32(21098u, 23u)] >> ((countOneBits(global3[_wgslsmith_index_u32(7180u, 1u)]) >> (_wgslsmith_sub_vec4_u32(global3[_wgslsmith_index_u32(u_input.d, 1u)], vec4<u32>(1u, 50598u, 0u, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    return Struct_2(vec3<u32>(~66000u, _wgslsmith_div_u32(_wgslsmith_div_u32(global2.a.x, u_input.d), u_input.d) << (~firstTrailingBit(4294967295u) % 32u), u_input.d), global2.c.d.x, global2.c);
}

fn func_1() -> f32 {
    let var_0 = select(global2.c.c.yxw, ~u_input.b.wxz, vec3<bool>(select(true, !global2.b, !global2.c.b.x), false, all(select(vec3<bool>(false, true, true), vec3<bool>(global2.c.d.x, global2.c.d.x, global2.b), global2.c.d.x)))) >> (global2.a % vec3<u32>(32u));
    global2 = func_2(2147483647i);
    global0 = array<vec4<u32>, 23>();
    global2 = func_2(u_input.a.x);
    let var_1 = all(vec2<bool>(false != global2.c.b.x, any(global2.c.d)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(565f - _wgslsmith_f_op_f32(global2.c.e * _wgslsmith_f_op_f32(select(172f, 131f, u_input.d > u_input.d)))), global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<u32>, 1>();
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x)));
    global2 = Struct_2(~(~global2.a), false || (all(vec3<bool>(global2.c.a.x, global2.c.d.x, global2.c.b.x)) && true), global2.c);
    global0 = array<vec4<u32>, 23>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1568f) - 746f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1()))), global2.c.e));
    var var_2 = global2.c.c.x;
    let var_3 = _wgslsmith_mod_vec2_i32(vec2<i32>(firstLeadingBit(global2.c.c.x), countOneBits(global2.c.c.x)), -(vec2<i32>(-1i) * -(~u_input.a.zz)));
    var var_4 = select(vec2<bool>(select(abs(55700u) >= (2845u | global2.a.x), _wgslsmith_f_op_f32(exp2(global1.x)) == _wgslsmith_f_op_f32(f32(-1f) * -382f), true), !global2.b), global2.c.a.zy, !vec2<bool>(any(!vec2<bool>(global2.b, global2.c.d.x)), func_3(var_3, Struct_2(vec3<u32>(94050u, 1u, 0u), global2.c.b.x, global2.c), Struct_2(global2.a, global2.b, Struct_1(vec3<bool>(true, global2.b, global2.b), vec3<bool>(global2.c.d.x, false, global2.c.b.x), vec4<i32>(-3252i, -18030i, global2.c.c.x, -2577i), global2.c.d, global1.x)), -vec2<i32>(u_input.c.x, global2.c.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.x - global2.c.e), countOneBits(4294967295u) ^ u_input.d);
}

